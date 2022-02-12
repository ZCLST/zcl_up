package com.zcl.basic.redisqueue.service;

import com.zcl.basic.redisqueue.model.RedisQueue;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/2/12 9:35

 * @desc    redis队列通用业务层

 **/
public interface RedisQueueService {
    /**
     * 保存队列
     * @param redisQueue
     */
    void save(RedisQueue redisQueue);

    /**
     * 批量保存队列
     * @param redisQueues
     */
    void saveBatch(List<RedisQueue> redisQueues);

}
