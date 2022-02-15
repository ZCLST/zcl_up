package com.zcl.basic.product.engine.service;

import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.request.SelectPageProductRequest;
import org.springframework.data.domain.Page;
import java.util.List;

/**

 * @author  zcl

 * @create  2022/1/28 15:36

 * @desc    商品索引业务层

 **/
public interface ProductIndexService {

    /**
     * 分页查询商品管理页面
     * @param selectPageProductRequest
     * @return
     */
    Page<ProductIndex> selectPageProduct(SelectPageProductRequest selectPageProductRequest);

    /**
     * 保存(更新)商品
     * @param productIndex
     */
    void saveProductIndex(ProductIndex productIndex);

    /**
     * 批量保存（更新）商品
     * @param productIndexList
     */
    void batchSaveProductIndex(List<ProductIndex> productIndexList);

    /**
     * 分页查询商城商品
     * @param selectPageProductRequest
     * @return
     */
    Page<ProductIndex> selectPageProductShop(SelectPageProductRequest selectPageProductRequest);

    /**
     * 根据productId查询商品
     * @param productId
     * @return
     */
    ProductIndex findProductIndexById(String productId);
}
