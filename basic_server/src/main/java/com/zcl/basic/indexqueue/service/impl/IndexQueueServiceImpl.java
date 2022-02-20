package com.zcl.basic.indexqueue.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zcl.basic.indexqueue.mapper.IndexQueueMapper;
import com.zcl.basic.indexqueue.model.IndexQueue;
import com.zcl.basic.indexqueue.service.IndexQueueService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zcl
 * @create 2022/2/12 9:36
 * @desc redis队列通用业务实现层
 **/
@Service
public class IndexQueueServiceImpl implements IndexQueueService {
    private IndexQueueMapper indexQueueMapper;

    public IndexQueueServiceImpl(IndexQueueMapper indexQueueMapper) {
        this.indexQueueMapper = indexQueueMapper;
    }

    @Override
    public void save(IndexQueue indexQueue) {
        indexQueueMapper.insert(indexQueue);
    }

    @Override
    public List<IndexQueue> selectByEntityIdAndStatus(String productId, String status) {
        QueryWrapper<IndexQueue> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(IndexQueue.ENTITY_ID, productId);
        queryWrapper.eq(IndexQueue.STATUS, status);
        return indexQueueMapper.selectList(queryWrapper);
    }

    @Override
    public void updateById(IndexQueue indexQueue) {
        indexQueueMapper.updateById(indexQueue);
    }
}
