package com.zcl.basic.product.biz.impl;

import com.zcl.basic.product.biz.ProductBiz;
import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.engine.service.ProductIndexService;
import com.zcl.basic.product.model.Product;
import com.zcl.basic.product.request.ProductSaveRequest;
import com.zcl.basic.product.request.SelectPageProductRequest;
import com.zcl.basic.product.service.ProductService;
import com.zcl.basic.product.vo.ProductVo;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import com.zcl.util.general.util.DateUtils;
import com.zcl.util.general.util.MyBigDecimalUtil;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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
        //判断商品编码、库存是否重复
        Product productCodeAndBatch = productService.findProductByProductCodeAndBatch(productRequest);
        if (productCodeAndBatch != null) {
            throw new ZfException("该商品编码、批号已存在");
        }
        String uuid = UUID.randomUUID().toString();
        //存入数据库
        this.saveProduct(productRequest,uuid);
        //存入ES
        this.saveProductIndex(productRequest,uuid);
        return CommonResponse.setResponseData(null);
    }

    private void saveProduct(ProductSaveRequest productRequest,String uuid) {
        String nowTime = DateUtils.getNowTime();
        Date date = DateUtils.dateReturnFormat(nowTime);
        Product product = BeanUtil.convert(productRequest, Product.class);
        product.setCreateTime(date);
        product.setProductId(uuid);
        productService.saveProduct(product);
    }

    private void saveProductIndex(ProductSaveRequest productRequest,String uuid) {
        String nowTime = DateUtils.getNowTime();
        Date date = DateUtils.dateReturnFormat(nowTime);
        ProductIndex productIndex = BeanUtil.convert(productRequest, ProductIndex.class);
        productIndex.setCreateTime(date);
        productIndex.setProductId(uuid);
        //金额数量放大1W倍
        Long productMoney =MyBigDecimalUtil.multiply(productRequest.getProductMoney());
        Long stock =MyBigDecimalUtil.multiply(productRequest.getStock());
        productIndex.setProductMoney(productMoney);
        productIndex.setStock(stock);
        productIndexService.saveProductIndex(productIndex);
    }


}
