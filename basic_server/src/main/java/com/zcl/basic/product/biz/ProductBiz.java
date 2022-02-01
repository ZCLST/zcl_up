package com.zcl.basic.product.biz;

import com.zcl.basic.product.request.ProductSaveRequest;
import com.zcl.basic.product.request.SelectPageProductRequest;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
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
}
