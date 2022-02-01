package com.zcl.basic.product.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zcl.basic.product.mapper.ProductMapper;
import com.zcl.basic.product.model.Product;
import com.zcl.basic.product.request.ProductSaveRequest;
import com.zcl.basic.product.service.ProductService;
import org.springframework.stereotype.Service;

/**
 * @author zcl
 * @create 2022/1/28 15:43
 * @desc 商品通用业务实现层
 **/
@Service
public class ProductServiceImpl implements ProductService {
    private ProductMapper productMapper;

    public ProductServiceImpl(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }

    @Override
    public Product findProductByProductCodeAndBatch(ProductSaveRequest productRequest) {
        QueryWrapper<Product> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(Product.PRODUCT_CODE, productRequest.getProductCode());
        queryWrapper.eq(Product.WARE_HOUSE_CODE, productRequest.getWarehouseCode());
        return productMapper.selectOne(queryWrapper);
    }

    @Override
    public void saveProduct(Product product) {
        productMapper.insert(product);
    }
}
