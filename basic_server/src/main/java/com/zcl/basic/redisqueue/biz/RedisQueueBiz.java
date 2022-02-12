package com.zcl.basic.redisqueue.biz;

import com.zcl.basic.redisqueue.model.RedisQueue;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/2/12 10:14

 * @desc    redis消息对列表核心业务层

 **/
public interface RedisQueueBiz {

    List<RedisQueue> selectRedisQueueByNum(String value);
}
