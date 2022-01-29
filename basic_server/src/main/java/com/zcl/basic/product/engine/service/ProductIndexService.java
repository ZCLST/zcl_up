package com.zcl.basic.product.engine.service;

import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.request.SelectPageProductRequest;
import org.springframework.data.domain.Page;

import java.io.IOException;
import java.util.List;

/**

 * @author  zcl

 * @create  2022/1/28 15:36

 * @desc    商品索引业务层

 **/
public interface ProductIndexService {


    List<Object> selectPageProduct(SelectPageProductRequest selectPageProductRequest);
}
