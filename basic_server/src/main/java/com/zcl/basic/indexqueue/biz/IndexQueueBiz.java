package com.zcl.basic.indexqueue.biz;

import com.zcl.basic.indexqueue.model.IndexQueue;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/2/12 10:14

 * @desc    redis消息对列表核心业务层

 **/
public interface IndexQueueBiz {
    /**
     * 保存
     * @param indexQueue
     */
    void save(IndexQueue indexQueue);

    /**
     * 根据实体ID以及状态查询消息
     * @param productId
     * @return
     */
    List<IndexQueue> selectByEntityIdAndStatus(String productId, String status);

    /**
     * 根据ID更新
     * @param indexQueue
     */
    void updateById(IndexQueue indexQueue);
}
