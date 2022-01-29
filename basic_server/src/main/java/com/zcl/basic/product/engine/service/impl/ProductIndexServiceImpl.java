package com.zcl.basic.product.engine.service.impl;

import com.alibaba.fastjson.JSON;
import com.zcl.basic.product.engine.dao.ProductIndexRepository;
import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.engine.service.ProductIndexService;
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
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.sort.SortBuilder;
import org.elasticsearch.search.sort.SortBuilders;
import org.elasticsearch.search.sort.SortOrder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.core.query.NativeSearchQueryBuilder;
import org.springframework.data.elasticsearch.core.query.SearchQuery;
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


    public List<Object> selectPageProduct2(SelectPageProductRequest selectPageProductRequest) {
        //创建搜索对象
        SearchRequest searchRequest = new SearchRequest(IndexEnum.PRODUCT_INDEX.getCode());
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();

        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
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
            if (StringUtils.equals(StatusEnum.NO.getFlag(), selectPageProductRequest.getHaveStock())) {
                boolQueryBuilder.must(QueryBuilders.rangeQuery(ProductIndex.STOCK).gt(0L));
            } else {
                boolQueryBuilder.must(QueryBuilders.termQuery(ProductIndex.STOCK, 0L));
            }
        }
        //是否启用
        if (StringUtils.isNotBlank(selectPageProductRequest.getStatus())) {
            boolQueryBuilder.must(QueryBuilders.termQuery(ProductIndex.STATUS, selectPageProductRequest.getStatus()));
        }
        try {
            sourceBuilder.query(boolQueryBuilder);

            sourceBuilder
                    .from(selectPageProductRequest.getPageNum())
                    .size(selectPageProductRequest.getPageSize());
//        .fetchSource();//指定字段
//                .sort("createTime", SortOrder.DESC);
            searchRequest.source(sourceBuilder);
            SearchResponse searchResponse = restHighLevelClient.search(searchRequest, RequestOptions.DEFAULT);
            System.out.println(JSON.toJSONString(searchResponse.getHits()));
            SearchHit[] hits = searchResponse.getHits().getHits();
            int total = (int) searchResponse.getHits().getTotalHits().value;//获取总数
            List<Object> list = new ArrayList<>();
            list.add(total);
            for (SearchHit s :
                    hits) {
                System.out.println(1);
                Map<String, Object> sourceAsMap = s.getSourceAsMap();
                list.add(sourceAsMap);
            }
            return list;
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Object> selectPageProduct(SelectPageProductRequest selectPageProductRequest) {

        return null;
    }
}
