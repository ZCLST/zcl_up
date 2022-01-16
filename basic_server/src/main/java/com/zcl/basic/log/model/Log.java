package com.zcl.basic.log.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

/**

 * @author  zcl

 * @create  2022/1/16 17:11

 * @desc    日志实体类

 **/
@TableName(value = "log_info")
public class Log implements Serializable {

    private static final long serialVersionUID = 5925249302222961923L;
    /**
     * 主键
     */
    @TableId(type = IdType.UUID)
    private String id;
    /**
     * 创建时间
     */
    private String createTime;
    /**
     * 用户id
     */
    private String createUser;
    /**
     * 事件
     */
    private String action;

    public Log() {
    }

    public Log(String id, String createTime, String createUser, String action) {
        this.id = id;
        this.createTime = createTime;
        this.createUser = createUser;
        this.action = action;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }
}
