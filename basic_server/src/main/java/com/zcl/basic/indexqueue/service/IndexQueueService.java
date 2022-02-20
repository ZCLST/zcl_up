package com.zcl.basic.indexqueue.service;

import com.zcl.basic.indexqueue.model.IndexQueue;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/2/12 9:35

 * @desc    redis队列通用业务层

 **/
public interface IndexQueueService {

    /**
     * 保存
     * @param indexQueue
     */
    void save(IndexQueue indexQueue);

    /**
     * 根据实体ID以及状态查询消息
     * @param productId
     * @param status
     * @return
     */
    List<IndexQueue> selectByEntityIdAndStatus(String productId, String status);

    /**
     * 根据ID更新
     * @param indexQueue
     */
    void updateById(IndexQueue indexQueue);
}
