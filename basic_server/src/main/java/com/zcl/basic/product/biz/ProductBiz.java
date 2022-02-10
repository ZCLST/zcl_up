package com.zcl.basic.product.biz;

import com.zcl.basic.product.request.*;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import java.io.IOException;
import java.util.Map;

/**

 * @author  zcl

 * @create  2022/1/28 15:40

 * @desc    商品核心业务层

 **/
@Validated
public interface ProductBiz {
    /**
     * 分页查询商品管理界面
     * @param selectPageProductRequest
     * @return
     */
    Map<String, Object> selectPageProduct(@Valid SelectPageProductRequest selectPageProductRequest) throws IOException;

    /**
     * 新增商品
     * @param productRequest
     * @return
     */
    Map<String, Object> insertProduct(@Valid ProductSaveRequest productRequest);

    /**
     * 更新商品
     * @param productUpdateRequest
     * @return
     */
    Map<String, Object> updateProduct(@Valid ProductUpdateRequest productUpdateRequest);

    /**
     * 批量更新商品上下架状态
     * @param updateProductStatusRequest
     * @return
     */
    Map<String, Object> updateProductStatus(@Valid UpdateProductStatusRequest updateProductStatusRequest);

    /**
     * 根据ID查询商品
     * @param id
     * @return
     */
    Map<String, Object> findProductById(@NotBlank(message = "id不能为空") String id);

    /**
     * 分页查询商城商品
     * @param selectPageProductRequest
     * @return
     */
    Map<String, Object> selectPageProductShop(@Valid SelectPageProductRequest selectPageProductRequest);

    /**
     * 加入购物车
     * @param addCartRequest
     * @return
     */
    Map<String, Object> addCart(@Valid AddCartRequest addCartRequest);
}
