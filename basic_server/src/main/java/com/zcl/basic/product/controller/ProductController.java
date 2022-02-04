package com.zcl.basic.product.controller;

import com.zcl.basic.product.biz.ProductBiz;
import com.zcl.basic.product.request.ProductSaveRequest;
import com.zcl.basic.product.request.ProductUpdateRequest;
import com.zcl.basic.product.request.SelectPageProductRequest;
import com.zcl.basic.product.request.UpdateProductStatusRequest;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Map;

/**
 * @author zcl
 * @create 2022/1/28 11:51
 * @desc 商品控制层
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
     *
     * @param selectPageProductRequest
     * @return
     */
    @PostMapping(value = "/selectPageProduct.json")
    public Map<String, Object> selectPageProduct(@RequestBody SelectPageProductRequest selectPageProductRequest) throws IOException {
        return productBiz.selectPageProduct(selectPageProductRequest);
    }

    /**
     * 新增商品
     *
     * @param productRequest
     * @return
     */
    @PostMapping(value = "/insertProduct.json")
    public Map<String, Object> insertProduct(@RequestBody ProductSaveRequest productRequest) {
        return productBiz.insertProduct(productRequest);
    }

    /**
     * 更新商品
     * @param productUpdateRequest
     * @return
     */
    @PostMapping(value = "/updateProduct.json")
    public Map<String,Object> updateProduct(@RequestBody ProductUpdateRequest productUpdateRequest){
        return productBiz.updateProduct(productUpdateRequest);
    }

    /**
     * 批量更新商品上下架状态
     * @param updateProductStatusRequest
     * @return
     */
    @PostMapping(value = "/updateProductStatus.json")
    public Map<String,Object> updateProductStatus(@RequestBody UpdateProductStatusRequest updateProductStatusRequest){
        return productBiz.updateProductStatus(updateProductStatusRequest);
    }

    /**
     * 根据ID查询商品
     * @param id
     * @return
     */
    @GetMapping(value = "/findProductById.json")
    public Map<String,Object> findProductById(String id){
        return productBiz.findProductById(id);
    }
}