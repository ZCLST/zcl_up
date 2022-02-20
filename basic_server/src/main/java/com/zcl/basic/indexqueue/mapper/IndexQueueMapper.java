package com.zcl.basic.indexqueue.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zcl.basic.indexqueue.model.IndexQueue;
import org.springframework.stereotype.Repository;

/**

 * @author  zcl

 * @create  2022/2/12 9:37

 * @desc    redis消息队列持久层

 **/
@Repository
public interface IndexQueueMapper extends BaseMapper<IndexQueue> {

}
