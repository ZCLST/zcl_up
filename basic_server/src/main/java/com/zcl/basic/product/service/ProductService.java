package com.zcl.basic.product.service;

import com.zcl.basic.product.model.Product;
import com.zcl.basic.product.request.ProductSaveRequest;
import org.springframework.stereotype.Service;

/**

 * @author  zcl

 * @create  2022/1/28 15:42

 * @desc    商品通用业务层

 **/
public interface ProductService {
    /**
     * 判断商品编码、批号是否存在
     * @param productRequest
     */
    Product findProductByProductCodeAndBatch(ProductSaveRequest productRequest);

    /**
     * 保存商品
     * @param product
     */
    void saveProduct(Product product);
}
