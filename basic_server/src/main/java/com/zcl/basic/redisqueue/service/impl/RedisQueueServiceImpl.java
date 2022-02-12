package com.zcl.basic.redisqueue.service.impl;

import com.zcl.basic.redisqueue.mapper.RedisQueueMapper;
import com.zcl.basic.redisqueue.model.RedisQueue;
import com.zcl.basic.redisqueue.service.RedisQueueService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zcl
 * @create 2022/2/12 9:36
 * @desc redis队列通用业务实现层
 **/
@Service
public class RedisQueueServiceImpl implements RedisQueueService {
    private RedisQueueMapper redisQueueMapper;

    public RedisQueueServiceImpl(RedisQueueMapper redisQueueMapper) {
        this.redisQueueMapper = redisQueueMapper;
    }

    @Override
    public void save(RedisQueue redisQueue) {
        redisQueueMapper.insert(redisQueue);
    }

    @Override
    public void saveBatch(List<RedisQueue> redisQueues) {
        redisQueueMapper.saveBatch(redisQueues);
    }


}
