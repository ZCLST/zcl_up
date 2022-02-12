package com.zcl.basic.redisqueue.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zcl.basic.redisqueue.model.RedisQueue;
import org.springframework.stereotype.Repository;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/2/12 9:37

 * @desc    redis消息队列持久层

 **/
@Repository
public interface RedisQueueMapper extends BaseMapper<RedisQueue> {
    /**
     * 批量插入
     * @param redisQueues
     */
    void saveBatch(List<RedisQueue> redisQueues);
}
