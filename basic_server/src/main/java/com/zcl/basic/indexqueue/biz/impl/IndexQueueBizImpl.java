package com.zcl.basic.indexqueue.biz.impl;

import com.zcl.basic.indexqueue.biz.IndexQueueBiz;
import com.zcl.basic.indexqueue.model.IndexQueue;
import com.zcl.basic.indexqueue.service.IndexQueueService;
import org.elasticsearch.index.IndexService;
import org.springframework.stereotype.Service;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/2/12 10:15

 * @desc    redis消息对列表核心业务实现层

 **/
@Service
public class IndexQueueBizImpl implements IndexQueueBiz {

    private IndexQueueService indexQueueService;

    public IndexQueueBizImpl(IndexQueueService indexQueueService) {
        this.indexQueueService = indexQueueService;
    }

    @Override
    public void save(IndexQueue indexQueue) {
        indexQueueService.save(indexQueue);
    }

    @Override
    public List<IndexQueue> selectByEntityIdAndStatus(String productId, String status) {
        return indexQueueService.selectByEntityIdAndStatus(productId,status);
    }

    @Override
    public void updateById(IndexQueue indexQueue) {
        indexQueueService.updateById(indexQueue);
    }
}
