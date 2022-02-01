package com.zcl.basic.product.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zcl.basic.product.model.Product;
import org.springframework.stereotype.Repository;

/**
 * @author zcl
 * @create 2022/1/30 15:12
 * @desc 商品持久层
 **/
@Repository
public interface ProductMapper extends BaseMapper<Product> {
}
