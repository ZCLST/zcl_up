package com.zcl.basic.product.biz.impl;

import com.zcl.basic.product.biz.ProductBiz;
import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.engine.service.ProductIndexService;
import com.zcl.basic.product.request.SelectPageProductRequest;
import com.zcl.basic.product.service.ProductService;
import com.zcl.util.general.response.CommonResponse;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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
    public Map<String, Object> selectPageProduct(SelectPageProductRequest selectPageProductRequest)  {
        List<Object> productIndexList = productIndexService.selectPageProduct(selectPageProductRequest);
        //金额取出除1W
//        List<ProductIndex> productIndexList = productIndices.get().collect(Collectors.toList());
//        if (CollectionUtils.isNotEmpty(productIndexList)) {
//            productIndexList.stream().forEach(productIndex ->{
//                String money = String.valueOf(productIndex.getProductMoney());
//                BigDecimal bigDecimal = new BigDecimal(money);
//                BigDecimal divide = bigDecimal.divide(BigDecimal.valueOf(10000), 2, BigDecimal.ROUND_UP);
//                long real_money = divide.longValue();
//                productIndex.setProductMoney(real_money);
//            });
//        }
        return CommonResponse.setResponseData(productIndexList);
    }
}
