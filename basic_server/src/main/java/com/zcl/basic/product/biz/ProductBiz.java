package com.zcl.basic.product.biz;

import com.zcl.basic.product.request.SelectPageProductRequest;

import java.io.IOException;
import java.util.Map;

/**

 * @author  zcl

 * @create  2022/1/28 15:40

 * @desc    商品核心业务层

 **/
public interface ProductBiz {
    /**
     * 分页查询商品管理界面
     * @param selectPageProductRequest
     * @return
     */
    Map<String, Object> selectPageProduct(SelectPageProductRequest selectPageProductRequest) throws IOException;
}
