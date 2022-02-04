package com.zcl.basic.product.biz.impl;

import com.zcl.basic.product.biz.ProductBiz;
import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.engine.service.ProductIndexService;
import com.zcl.basic.product.model.Product;
import com.zcl.basic.product.request.ProductSaveRequest;
import com.zcl.basic.product.request.ProductUpdateRequest;
import com.zcl.basic.product.request.SelectPageProductRequest;
import com.zcl.basic.product.request.UpdateProductStatusRequest;
import com.zcl.basic.product.service.ProductService;
import com.zcl.basic.product.vo.ProductVo;
import com.zcl.util.general.enums.StatusEnum;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import com.zcl.util.general.util.DateUtils;
import com.zcl.util.general.util.MyBigDecimalUtil;
import com.zcl.util.general.util.OssUtil;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

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

    public ProductBizImpl(ProductService productService, ProductIndexService productIndexService) {
        this.productService = productService;
        this.productIndexService = productIndexService;
    }

    @Override
    public Map<String, Object> selectPageProduct(SelectPageProductRequest selectPageProductRequest) {
        Page<ProductIndex> product = productIndexService.selectPageProduct(selectPageProductRequest);
        List<ProductVo> productVos = BeanUtil.convertList(product.getContent(), ProductVo.class);
        if (CollectionUtils.isNotEmpty(productVos)) {
            //金额、库存取出除1W
            productVos.stream().forEach(productVo -> {
                BigDecimal money = MyBigDecimalUtil.divide(productVo.getProductMoney());
                BigDecimal stock = MyBigDecimalUtil.divide(productVo.getStock());
                productVo.setRealProductMoney(money);
                productVo.setRealStock(stock);
            });
            return CommonResponse.setIndexPageResponse(productVos, productVos.size());
        }
        return CommonResponse.setIndexPageResponse(null, null);
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
        if(StringUtils.isEmpty(productRequest.getProductUrl())){
            productRequest.setProductUrl(OssUtil.GLOBAL_IMG_URL);
        }
        //存入数据库
        this.saveProduct(productRequest, uuid);
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
        if(!StringUtils.equals(product.getProductCode(),productUpdateRequest.getProductCode())){
            Product productByCode = productService.findProductByCode(productUpdateRequest.getProductCode());
            if (productByCode != null) {
                throw new ZfException("该商品编码已存在");
            }
        }
        //更新数据库数据
        this.updateProductDb(product, productUpdateRequest);
        //更新ES
        this.updateProductIndex(product, productUpdateRequest);
        return CommonResponse.setResponseData(null);
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
        //更新ES
        this.batchUpdateProductIndexStatus(products, flagValue);
        return CommonResponse.setResponseData(null);
    }

    @Override
    public Map<String, Object> findProductById(String id) {
        Product product = productService.findProductById(id);
        Assert.notNull(product,id+":该商品不存在");
        return CommonResponse.setResponseData(product);
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

    private void updateProductDb(Product product, ProductUpdateRequest productUpdateRequest) {
        Product convert = BeanUtil.convert(productUpdateRequest, Product.class);
        convert.setCreateTime(product.getCreateTime());
        productService.updateProduct(convert);
    }

    private void saveProduct(ProductSaveRequest productRequest, String uuid) {
        String nowTime = DateUtils.getNowTime();
        Date date = DateUtils.dateReturnFormat(nowTime);
        Product product = BeanUtil.convert(productRequest, Product.class);
        product.setCreateTime(date);
        product.setProductId(uuid);
        productService.saveProduct(product);
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