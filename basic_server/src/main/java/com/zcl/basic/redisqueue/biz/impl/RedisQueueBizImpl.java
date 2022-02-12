package com.zcl.basic.redisqueue.biz.impl;

import com.zcl.basic.redisqueue.biz.RedisQueueBiz;
import com.zcl.basic.redisqueue.model.RedisQueue;
import org.springframework.stereotype.Service;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/2/12 10:15

 * @desc    redis消息对列表核心业务实现层

 **/
@Service
public class RedisQueueBizImpl implements RedisQueueBiz {

    @Override
    public List<RedisQueue> selectRedisQueueByNum(String value) {
        return null;
    }
}
