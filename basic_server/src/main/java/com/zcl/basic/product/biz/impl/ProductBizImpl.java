package com.zcl.basic.product.biz.impl;

import com.alibaba.fastjson.JSON;
import com.zcl.basic.feign.user.client.UserFeignClient;
import com.zcl.basic.product.biz.ProductBiz;
import com.zcl.basic.product.dto.CartDto;
import com.zcl.basic.product.dto.CartItemDto;
import com.zcl.basic.product.dto.ProductStockDto;
import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.engine.service.ProductIndexService;
import com.zcl.basic.product.model.Product;
import com.zcl.basic.product.request.*;
import com.zcl.basic.product.service.ProductService;
import com.zcl.basic.product.vo.CartItemVo;
import com.zcl.basic.product.vo.CartVo;
import com.zcl.basic.product.vo.ProductVo;
import com.zcl.basic.redisqueue.model.RedisQueue;
import com.zcl.basic.redisqueue.service.RedisQueueService;
import com.zcl.basic.warehouse.service.WarehouseService;
import com.zcl.util.general.enums.ActionTypeEnum;
import com.zcl.util.general.enums.StatusEnum;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.*;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.elasticsearch.index.query.QueryBuilders;
import org.junit.Test;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import redis.clients.jedis.Jedis;

import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @author zcl
 * @create 2022/1/28 15:41
 * @desc 商品核心业务实现层
 **/
@Service
public class ProductBizImpl implements ProductBiz {
    private ProductService productService;
    private ProductIndexService productIndexService;
    private WarehouseService warehouseService;
    private RedisQueueService redisQueueService;
    private UserFeignClient userFeignClient;

    public ProductBizImpl(ProductService productService, ProductIndexService productIndexService, WarehouseService warehouseService, RedisQueueService redisQueueService, UserFeignClient userFeignClient) {
        this.productService = productService;
        this.productIndexService = productIndexService;
        this.warehouseService = warehouseService;
        this.redisQueueService = redisQueueService;
        this.userFeignClient = userFeignClient;
    }

    @Override
    public Map<String, Object> selectPageProduct(SelectPageProductRequest selectPageProductRequest) {
        Page<ProductIndex> product = productIndexService.selectPageProduct(selectPageProductRequest);
        List<ProductVo> productVos = BeanUtil.convertList(product.getContent(), ProductVo.class);
        if (CollectionUtils.isNotEmpty(productVos)) {
            //计算库存
            this.handleStock(productVos, selectPageProductRequest.getHaveStock());
            //计算金额
            this.handleMoney(productVos);
            int totalElements = (int) product.getTotalElements();
            return CommonResponse.setIndexPageResponse(productVos,totalElements);
        }
        return CommonResponse.setIndexPageResponse(null, null);
    }

    private void handleMoney(List<ProductVo> productVos) {
        //金额取出除1W
        productVos.stream().forEach(productVo -> {
            BigDecimal money = MyBigDecimalUtil.divide(productVo.getProductMoney());
            productVo.setRealProductMoney(money);
        });
    }

    private void handleStock(List<ProductVo> productVos, String haveStock) {
        //查询商品库存，结果为空商品库存置为0
        Map<String, ProductStockDto> map = new HashMap<>();
        List<String> productIds = productVos.stream().map(productVo -> productVo.getProductId()).collect(Collectors.toList());
        List<ProductStockDto> productStockDtoList = warehouseService.selectStock(productIds);
        if (CollectionUtils.isNotEmpty(productStockDtoList)) {
            productStockDtoList.stream().forEach(productStockDto -> {
                map.put(productStockDto.getProductId(), productStockDto);
            });
        }
        productVos.stream().forEach(productVo -> {
            if (map.containsKey(productVo.getProductId())) {
                productVo.setRealStock(map.get(productVo.getProductId()).getStock());
            } else {
                productVo.setRealStock(new BigDecimal("0"));
            }
        });
        //有无库存查询
        if (StringUtils.isNotBlank(haveStock)) {
            //有库存
            if (StringUtils.equals(haveStock, StatusEnum.YES.getFlag())) {
                BigDecimal bigDecimal = new BigDecimal("0.00");
                List<ProductVo> collect = productVos.stream()
                        .filter(productVo -> productVo.getRealStock().compareTo(bigDecimal) == 1)
                        .collect(Collectors.toList());
                productVos.clear();
                productVos.addAll(collect);
            } else {
                BigDecimal bigDecimal = new BigDecimal("0.00");
                List<ProductVo> collect = productVos.stream()
                        .filter(productVo -> productVo.getRealStock().compareTo(bigDecimal) < 1)
                        .collect(Collectors.toList());
                productVos.clear();
                productVos.addAll(collect);
            }
        }
    }

    @Override
    @Transactional
    public Map<String, Object> insertProduct(ProductSaveRequest productRequest) {
        //判断商品编码是否重复
        Product product = productService.findProductByCode(productRequest.getProductCode());
        if (product != null) {
            throw new ZfException("该商品编码已存在");
        }
        String uuid = UUID.randomUUID().toString();
        if (StringUtils.isEmpty(productRequest.getProductUrl())) {
            productRequest.setProductUrl(OssUtil.GLOBAL_IMG_URL);
        }
        //存入数据库
        Product newProduct = this.saveProduct(productRequest, uuid);
        //存入redis
        this.saveProductRedis(newProduct);
        //存入ES
        this.saveProductIndex(productRequest, uuid);
        return CommonResponse.setResponseData(null);
    }

    @Override
    @Transactional
    public Map<String, Object> updateProduct(ProductUpdateRequest productUpdateRequest) {
        //判断商品是否存在
        Product product = productService.findProductById(productUpdateRequest.getProductId());
        Assert.notNull(product, "该商品不存在");
        //判断商品编码是否重复
        if (!StringUtils.equals(product.getProductCode(), productUpdateRequest.getProductCode())) {
            Product productByCode = productService.findProductByCode(productUpdateRequest.getProductCode());
            if (productByCode != null) {
                throw new ZfException("该商品编码已存在");
            }
        }
        //更新数据库数据
        Product newProduct = this.updateProductDb(product, productUpdateRequest);
        //存入redis
        this.saveProductRedis(newProduct);
        //更新ES
        this.updateProductIndex(product, productUpdateRequest);
        return CommonResponse.setResponseData(null);
    }

    private void saveProductRedis(Product newProduct) {
        String key = JedisUtil.buildKey(JedisUtil.PRODUCT_KEY, newProduct.getProductId());
        JedisUtil.getJedis().set(key,JSON.toJSONString(newProduct));
    }

    @Override
    @Transactional
    public Map<String, Object> updateProductStatus(UpdateProductStatusRequest updateProductStatusRequest) {
        Boolean flag = updateProductStatusRequest.getFlag();
        //转换为数据库存储值
        String flagValue = this.returnFlagValue(flag);
        List<String> oldIdList = Arrays.asList(updateProductStatusRequest.getIds());
        //查询id是否存在
        List<Product> products = productService.selectProductByIds(oldIdList);
        if (CollectionUtils.isNotEmpty(products)) {
            List<String> newIdList = products.stream().map(product -> product.getProductId()).collect(Collectors.toList());
            List<String> subtract = (List<String>) CollectionUtils.subtract(oldIdList, newIdList);
            if (CollectionUtils.isNotEmpty(subtract)) {
                throw new ZfException(subtract + "商品不存在");
            }
        } else {
            throw new ZfException(oldIdList + "商品不存在");
        }
        //更新数据库数据
        this.batchUpdateProductStatusDb(oldIdList, flagValue);
        //批量存入redis
        this.saveBatchRedis(products);
        //更新ES
        this.batchUpdateProductIndexStatus(products, flagValue);
        return CommonResponse.setResponseData(null);
    }

    private void saveBatchRedis(List<Product> products) {
        products.stream().forEach(product -> {
            String key = JedisUtil.buildKey(JedisUtil.PRODUCT_KEY, product.getProductId());
            JedisUtil.getJedis().set(key,JSON.toJSONString(product));
        });
    }

    private void buildBatchProductInfoRedisQueue(List<String> oldIdList) {
        List<RedisQueue> redisQueues = new ArrayList<>();
        oldIdList.stream().forEach(id -> {
            RedisQueue redisQueue = new RedisQueue();
            redisQueue.setEntityId(id);
            redisQueue.setActionType(ActionTypeEnum.PRODUCT_ACTION.getCode());
            redisQueues.add(redisQueue);
        });
        redisQueueService.saveBatch(redisQueues);
    }


    @Override
    public Map<String, Object> findProductById(String id) {
        Product product = productService.findProductById(id);
        Assert.notNull(product, id + ":该商品不存在");
        return CommonResponse.setResponseData(product);
    }

    @Override
    public Map<String, Object> selectPageProductShop(SelectPageProductRequest selectPageProductRequest) {
        Page<ProductIndex> product = productIndexService.selectPageProductShop(selectPageProductRequest);
        List<ProductVo> productVos = BeanUtil.convertList(product.getContent(), ProductVo.class);
        if (CollectionUtils.isNotEmpty(productVos)) {
            //计算库存
//            this.handleStock(productVos, selectPageProductRequest.getHaveStock());
            //计算金额
            this.handleMoney(productVos);
            int totalElements = (int) product.getTotalElements();
            return CommonResponse.setIndexPageResponse(productVos,totalElements);
        }
        return CommonResponse.setIndexPageResponse(null, null);
    }

    @Override
    @Transactional
    public Map<String, Object> addCart(String productId) {
        String userId = ContextUtils.getUserId();
        Object userByUid = userFeignClient.findUserByUid(userId);
        Assert.notNull(userByUid, "该用户不存在！");
        //判断redis是否存在，存在则添加数量，不存在则数量为1
        Jedis jedis = JedisUtil.getJedis();
        String key = JedisUtil.buildKey(JedisUtil.CART_KEY, userId);
        AddCartRequest addCartRequest = new AddCartRequest();
        addCartRequest.setUserId(userId);
        addCartRequest.setProductId(productId);
        if (jedis.exists(key)) {
            //处理购物车
            this.handleCart(jedis, key, addCartRequest);
        } else {
            //创建购物车
            this.buildCart(jedis, key, addCartRequest);
        }
        return CommonResponse.setResponseData(null);
    }

    @Override
    public Map<String, Object> showCart(ShowCartRequest showCartRequest) {
        Object userByUid = userFeignClient.findUserByUid(showCartRequest.getUserId());
        Assert.notNull(userByUid, "该用户不存在!");
        String key = JedisUtil.buildKey(JedisUtil.CART_KEY, showCartRequest.getUserId());
        Jedis jedis = JedisUtil.getJedis();
        if (jedis.exists(key)) {
            String str = jedis.get(key);
            //构建cartVo
            CartVo cartVo = this.buildCartVo(jedis,str);
            //查询条件不为空,加工VO
            this.handleQuery(cartVo,showCartRequest);
            return CommonResponse.setResponseData(cartVo);
        } else {
            return CommonResponse.setResponseData(null);
        }
    }

    private void handleQuery(CartVo cartVo,ShowCartRequest showCartRequest) {
        if(StringUtils.isNotBlank(showCartRequest.getProductCodeOrName())){

        }
    }

    private CartVo buildCartVo(Jedis jedis,String str) {
        CartVo cartVo = new CartVo();
        List<CartItemVo> cartItemVos = new ArrayList<>();
        CartDto cartDto = JSON.parseObject(str, CartDto.class);
        List<CartItemDto> cartItemDtoList = cartDto.getCartItemDtoList();
        cartItemDtoList.stream().forEach(cartItemDto -> {
            String productId = cartItemDto.getProductId();
            Integer num = cartItemDto.getNum();
            //从缓存中取出商品详情
            String json = jedis.get(JedisUtil.buildKey(JedisUtil.PRODUCT_KEY, productId));
            Product product = JSON.parseObject(json, Product.class);
            CartItemVo cartItemVo = BeanUtil.convert(product, CartItemVo.class);
            cartItemVo.setNum(num);
            cartItemVos.add(cartItemVo);
        });
        cartVo.setCartItemVos(cartItemVos);
        return cartVo;
    }

    private void buildCart(Jedis jedis, String key, AddCartRequest addCartRequest) {
        CartDto cartDto = new CartDto();
        this.addCartItem(cartDto, addCartRequest.getProductId(), 1);
        Product product = productService.findProductById(addCartRequest.getProductId());
        Assert.notNull(product,"该商品不存在");
        String jsonString = JSON.toJSONString(cartDto);
        jedis.set(key, jsonString);
        String productInfoKey = JedisUtil.buildKey(JedisUtil.PRODUCT_KEY, addCartRequest.getProductId());
        //添加的商品不存在与redis中就添加至redis
        if (!jedis.exists(productInfoKey)) {
            String json = JSON.toJSONString(product);
            jedis.set(productInfoKey, json);
        }
    }

    private void handleCart(Jedis jedis, String key, AddCartRequest addCartRequest) {
        String str = jedis.get(key);
        CartDto cartDto = JSON.parseObject(str, CartDto.class);
        //存在相同明细数量+1
        List<String> productIds = cartDto.getCartItemDtoList().stream().map(cartItemDto -> cartItemDto.getProductId()).collect(Collectors.toList());
        if (CollectionUtils.isNotEmpty(productIds)) {
            if (productIds.contains(addCartRequest.getProductId())) {
                cartDto.getCartItemDtoList().forEach(cartItemDto -> {
                    if (StringUtils.equals(addCartRequest.getProductId(), cartItemDto.getProductId())) {
                        cartItemDto.setNum(cartItemDto.getNum() + 1);
                    }
                });
            } else {
                //添加购物车明细
                this.addCartItem(cartDto, addCartRequest.getProductId(), 1);
            }
        } else {
            this.addCartItem(cartDto, addCartRequest.getProductId(), 1);
        }
        String jsonString = JSON.toJSONString(cartDto);
        jedis.set(key, jsonString);
        String productInfoKey = JedisUtil.buildKey(JedisUtil.PRODUCT_KEY, addCartRequest.getProductId());
        //添加的商品不存在与redis中就添加至redis
        if (!jedis.exists(productInfoKey)) {
            Product product = productService.findProductById(addCartRequest.getProductId());
            String json = JSON.toJSONString(product);
            jedis.set(productInfoKey, json);
        }
    }

    private void addCartItem(CartDto cartDto, String productId, int num) {
        CartItemDto cartItemDto = new CartItemDto(productId, num);
        if (cartDto.getCartItemDtoList() == null) {
            List<CartItemDto> cartItemDtoList = new ArrayList<>();
            cartItemDtoList.add(cartItemDto);
            cartDto.setCartItemDtoList(cartItemDtoList);
        } else {
            cartDto.getCartItemDtoList().add(cartItemDto);
        }
    }

    private void batchUpdateProductIndexStatus(List<Product> products, String flagValue) {
        Map<String, Product> map = new HashMap<>();
        products.stream().forEach(product -> map.put(product.getProductId(), product));
        List<ProductIndex> productIndexList = BeanUtil.convertList(products, ProductIndex.class);
        productIndexList.stream().forEach(productIndex -> {
            //设置状态
            productIndex.setStatus(flagValue);
            //设置金额、库存，放大1w倍
            Product product = map.get(productIndex.getProductId());
            Long money = MyBigDecimalUtil.multiply(product.getProductMoney());
            Long stock = MyBigDecimalUtil.multiply(product.getStock());
            productIndex.setProductMoney(money);
            productIndex.setStock(stock);
        });

        productIndexService.batchSaveProductIndex(productIndexList);
    }

    private void batchUpdateProductStatusDb(List<String> productIds, String flagValue) {
        productService.batchUpdateProductStatus(productIds, flagValue);
    }

    private String returnFlagValue(Boolean flag) {
        return (flag) ? StatusEnum.YES.getFlag() : StatusEnum.NO.getFlag();
    }

    private void updateProductIndex(Product product, ProductUpdateRequest productUpdateRequest) {
        ProductIndex productIndex = BeanUtil.convert(productUpdateRequest, ProductIndex.class);
        productIndex.setCreateTime(product.getCreateTime());
        //设置金额、库存，放大1w倍
        Long money = MyBigDecimalUtil.multiply(productUpdateRequest.getProductMoney());
        Long stock = MyBigDecimalUtil.multiply(product.getStock());
        productIndex.setProductMoney(money);
        productIndex.setStock(stock);
        productIndexService.saveProductIndex(productIndex);
    }

    private Product updateProductDb(Product product, ProductUpdateRequest productUpdateRequest) {
        Product convert = BeanUtil.convert(productUpdateRequest, Product.class);
        convert.setCreateTime(product.getCreateTime());
        productService.updateProduct(convert);
        return convert;
    }

    private Product saveProduct(ProductSaveRequest productRequest, String uuid) {
        String nowTime = DateUtils.getNowTime();
        Date date = DateUtils.dateReturnFormat(nowTime);
        Product product = BeanUtil.convert(productRequest, Product.class);
        product.setCreateTime(date);
        product.setProductId(uuid);
        productService.saveProduct(product);
        return product;
    }

    private void buildProductInfoRedisQueue(String productId) {
        RedisQueue redisQueue = new RedisQueue();
        redisQueue.setEntityId(productId);
        redisQueue.setActionType(ActionTypeEnum.PRODUCT_ACTION.getCode());
        redisQueueService.save(redisQueue);
    }

    private void saveProductIndex(ProductSaveRequest productRequest, String uuid) {
        String nowTime = DateUtils.getNowTime();
        Date date = DateUtils.dateReturnFormat(nowTime);
        ProductIndex productIndex = BeanUtil.convert(productRequest, ProductIndex.class);
        productIndex.setCreateTime(date);
        productIndex.setProductId(uuid);
        //金额数量放大1W倍
        Long productMoney = MyBigDecimalUtil.multiply(productRequest.getProductMoney());
        productIndex.setProductMoney(productMoney);
        //新增默认库存为0
        productIndex.setStock(0L);
        productIndexService.saveProductIndex(productIndex);
    }


}
