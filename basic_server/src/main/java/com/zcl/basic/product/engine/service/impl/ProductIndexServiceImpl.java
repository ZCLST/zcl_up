package com.zcl.basic.product.engine.service.impl;

import com.alibaba.fastjson.JSON;
import com.zcl.basic.product.engine.dao.ProductIndexRepository;
import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.engine.service.ProductIndexService;
import com.zcl.basic.product.model.Product;
import com.zcl.basic.product.request.SelectPageProductRequest;
import com.zcl.util.general.enums.IndexEnum;
import com.zcl.util.general.enums.StatusEnum;
import com.zcl.util.general.exception.ZfException;
import org.apache.commons.lang.StringUtils;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.TermQueryBuilder;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.sort.SortBuilder;
import org.elasticsearch.search.sort.SortBuilders;
import org.elasticsearch.search.sort.SortOrder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.elasticsearch.core.query.NativeSearchQueryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author zcl
 * @create 2022/1/28 15:37
 * @desc 商品索引业务层
 **/
@Service
public class ProductIndexServiceImpl implements ProductIndexService {
    private ProductIndexRepository productIndexRepository;
    private RestHighLevelClient restHighLevelClient;

    public ProductIndexServiceImpl(ProductIndexRepository productIndexRepository, RestHighLevelClient restHighLevelClient) {
        this.productIndexRepository = productIndexRepository;
        this.restHighLevelClient = restHighLevelClient;
    }

    @Override
    public Page<ProductIndex> selectPageProduct(SelectPageProductRequest selectPageProductRequest) {
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
        //设置查询条件
        this.setQuery(boolQueryBuilder, selectPageProductRequest);
        //设置分页和排序
        PageRequest pageRequest = this.setPageAndOrder(selectPageProductRequest);
        Page<ProductIndex> search = productIndexRepository.search(boolQueryBuilder, pageRequest);
        return search;
    }

    @Override
    public void saveProductIndex(ProductIndex productIndex) {
        productIndexRepository.save(productIndex);
    }

    private PageRequest setPageAndOrder(SelectPageProductRequest selectPageProductRequest) {
        List<Sort.Order> orders = new ArrayList<>();
        Sort.Order orderName = new Sort.Order(Sort.Direction.ASC, ProductIndex.PRODUCT_NAME);
        Sort.Order orderCreateTime = new Sort.Order(Sort.Direction.DESC, ProductIndex.CREATE_TIME);
        orders.add(orderName);
        orders.add(orderCreateTime);
        Sort sort = Sort.by(orders);
        PageRequest pageRequest = PageRequest.of(selectPageProductRequest.getPageNum(), selectPageProductRequest.getPageSize(), sort);
        return pageRequest;
    }

    private void setQuery(BoolQueryBuilder boolQueryBuilder, SelectPageProductRequest selectPageProductRequest) {
        //商品编码
        if (StringUtils.isNotBlank(selectPageProductRequest.getProductCode())) {
            boolQueryBuilder.must(QueryBuilders.termQuery(ProductIndex.PRODUCT_CODE, selectPageProductRequest.getProductCode()));
        }
        //商品名称
        if (StringUtils.isNotBlank(selectPageProductRequest.getProductName())) {
            boolQueryBuilder.must(QueryBuilders.wildcardQuery(ProductIndex.PRODUCT_NAME, "*" + selectPageProductRequest.getProductName() + "*"));
        }
        //有无库存
        if (StringUtils.isNotBlank(selectPageProductRequest.getHaveStock())) {
            if (StringUtils.equals(StatusEnum.YES.getFlag(), selectPageProductRequest.getHaveStock())) {
                boolQueryBuilder.must(QueryBuilders.rangeQuery(ProductIndex.STOCK).gt(0L));
            } else {
                boolQueryBuilder.must(QueryBuilders.termQuery(ProductIndex.STOCK, 0L));
            }
        }
        //是否启用
        if (StringUtils.isNotBlank(selectPageProductRequest.getStatus())) {
            boolQueryBuilder.must(QueryBuilders.termQuery(ProductIndex.STATUS, selectPageProductRequest.getStatus()));
        }
    }
}
