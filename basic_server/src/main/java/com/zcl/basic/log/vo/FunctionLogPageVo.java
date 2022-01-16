package com.zcl.basic.log.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**

 * @author  zcl

 * @create  2022/1/16 17:54

 * @desc    功能日志分页VO

 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FunctionLogPageVo {
    private String id;
    /**
     * 创建时间
     */
    private String createTime;
    /**
     * 用户id
     */
    private String createUserName;
    /**
     * 事件
     */
    private String action;
}
