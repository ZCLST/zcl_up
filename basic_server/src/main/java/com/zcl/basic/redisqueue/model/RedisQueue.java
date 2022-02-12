package com.zcl.basic.redisqueue.model;

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

 * @desc    redis处理队列实体类

 **/
@TableName(value = "redis_queue")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RedisQueue implements Serializable {

    private static final long serialVersionUID = -3498203071558649862L;
    @TableId(type = IdType.UUID)
    private String queueId;
    private String entityId;
    private String actionType;
    private Date handleTime;
    private String msg;
}
