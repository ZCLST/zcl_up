package com.zcl.basic.indexqueue.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**

 * @author  zcl

 * @create  2022/2/12 9:25

 * @desc    异常数据队列实体类

 **/
@TableName(value = "index_queue")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class IndexQueue implements Serializable {

    private static final long serialVersionUID = -3498203071558649862L;
    public static final String QUEUE_ID="queue_id";
    public static final String ENTITY_ID="entity_id";
    public static final String ACTION_TYPE="action_type";
    public static final String STATUS="status";
    public static final String HANDLE_TIME="handle_time";
    public static final String MSG="msg";

    @TableId(type = IdType.UUID)
    private String queueId;
    /**
     * 待处理id
     */
    private String entityId;
    /**
     * 事件类型（1：商品）
     */
    private String actionType;
    /**
     * 处理结果 0：待处理、1：处理成功、2：处理失败
     */
    private String status;
    /**
     * 处理时间
     */
    private Date handleTime;
    /**
     * 信息
     */
    private String msg;
}
