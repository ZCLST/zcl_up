package com.zcl.basic.notice.request;

import lombok.Data;

import javax.validation.constraints.NotNull;

/**

 * @author  zcl

 * @create  2022/1/19 21:13

 * @desc    站内信分页查询请求类

 **/
@Data
public class NoticePageRequest {
    /**
     * 用户ID
     */
    private String userId;
    /**
     * 收件时间
     */
    private String createTime;
    /**
     * 是否已读
     */
    private String haveRead;
    /**
     * 发件人
     */
    private String sendMan;
    /**
     * 分页号
     */
    @NotNull(message = "pageIndex不能为空")
    private Integer pageIndex;
    /**
     * 分页大小
     */
    @NotNull(message = "pageSize不能为空")
    private Integer pageSize;
}
