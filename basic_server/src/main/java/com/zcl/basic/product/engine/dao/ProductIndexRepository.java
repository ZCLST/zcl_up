package com.zcl.basic.product.engine.dao;

import com.zcl.basic.product.engine.model.ProductIndex;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;
/**

 * @author  zcl

 * @create  2022/1/28 15:39

 * @desc    商品索引持久层

 **/
@Repository
public interface ProductIndexRepository extends ElasticsearchRepository<ProductIndex, String> {
}
