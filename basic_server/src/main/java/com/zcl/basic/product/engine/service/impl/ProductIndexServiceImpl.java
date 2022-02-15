package com.zcl.basic.product.engine.service.impl;

import com.zcl.basic.product.engine.dao.ProductIndexRepository;
import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.engine.service.ProductIndexService;
import com.zcl.basic.product.request.SelectPageProductRequest;
import com.zcl.util.general.enums.StatusEnum;
import org.apache.commons.lang.StringUtils;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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
        this.setManagerQuery(boolQueryBuilder, selectPageProductRequest);
        //设置分页和排序
        PageRequest pageRequest = this.setPageAndOrder(selectPageProductRequest);
        Page<ProductIndex> search = productIndexRepository.search(boolQueryBuilder, pageRequest);
        return search;
    }

    @Override
    public void saveProductIndex(ProductIndex productIndex) {
        productIndexRepository.save(productIndex);
    }

    @Override
    public void batchSaveProductIndex(List<ProductIndex> productIndexList) {
        productIndexRepository.saveAll(productIndexList);
    }

    @Override
    public Page<ProductIndex> selectPageProductShop(SelectPageProductRequest selectPageProductRequest) {
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
        //设置查询条件
        this.setQuery(boolQueryBuilder, selectPageProductRequest);
        //设置分页和排序
        PageRequest pageRequest = this.setPageAndOrder(selectPageProductRequest);
        Page<ProductIndex> search = productIndexRepository.search(boolQueryBuilder, pageRequest);
        return search;
    }

    @Override
    public ProductIndex findProductIndexById(String productId) {
        Optional<ProductIndex> productIndex = productIndexRepository.findById(productId);
        if (productIndex.isPresent()) {
            return productIndex.get();
        }
        return null;
    }

    private PageRequest setPageAndOrder(SelectPageProductRequest selectPageProductRequest) {
        List<Sort.Order> orders = new ArrayList<>();
        Sort.Order orderName = new Sort.Order(Sort.Direction.ASC, ProductIndex.PRODUCT_NAME);
        Sort.Order orderCreateTime = new Sort.Order(Sort.Direction.DESC, ProductIndex.CREATE_TIME);
        orders.add(orderCreateTime);
        orders.add(orderName);
        orders.add(orderCreateTime);
        Sort sort = Sort.by(orders);
        Integer pageIndex = selectPageProductRequest.getPageIndex();
        if (pageIndex > 0) {
            pageIndex = pageIndex - 1;
        }
        PageRequest pageRequest = PageRequest.of(pageIndex, selectPageProductRequest.getPageSize(), sort);
        return pageRequest;
    }

    private void setManagerQuery(BoolQueryBuilder boolQueryBuilder, SelectPageProductRequest selectPageProductRequest) {
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

    private void setQuery(BoolQueryBuilder boolQueryBuilder, SelectPageProductRequest selectPageProductRequest) {
        //只展示启用商品
        boolQueryBuilder.must(QueryBuilders.termQuery(ProductIndex.STATUS, StatusEnum.YES.getFlag()));
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
