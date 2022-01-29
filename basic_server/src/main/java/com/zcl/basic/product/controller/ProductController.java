package com.zcl.basic.product.controller;

import com.zcl.basic.product.biz.ProductBiz;
import com.zcl.basic.product.request.SelectPageProductRequest;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.Map;

/**

 * @author  zcl

 * @create  2022/1/28 11:51

 * @desc    商品控制层

 **/
@RestController
@RequestMapping("/productController")
public class ProductController {
    private ProductBiz productBiz;

    public ProductController(ProductBiz productBiz) {
        this.productBiz = productBiz;
    }

    /**
     * 分页查询商品管理界面
     * @param selectPageProductRequest
     * @return
     */
    @PostMapping(value = "/selectPageProduct.json")
    public Map<String,Object> selectPageProduct(@RequestBody SelectPageProductRequest selectPageProductRequest) throws IOException {
        return productBiz.selectPageProduct(selectPageProductRequest);
    }
}
