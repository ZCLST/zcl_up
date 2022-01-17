package com.zcl.basic.log.biz;

import com.zcl.basic.log.dto.ActionDto;
import com.zcl.basic.log.dto.LogDto;
import com.zcl.basic.log.request.FunctionLogRequest;

import java.util.List;
import java.util.Map;

/**

 * @author  zcl

 * @create  2022/1/16 17:19

 * @desc    日志业务层

 **/
public interface LogBiz {
    /**
     * 动态分页查询功能日志
     * @param functionLogRequest
     * @return
     */
    Map<String, Object> selectPageFunctionLog(FunctionLogRequest functionLogRequest);

    /**
     * 初始化事件下拉选择框
     * @return
     */
    Map<String, Object> getSelectOption();

    /**
     * 动态分页查询登录日志
     * @param functionLogRequest
     * @return
     */
    Map<String, Object> selectPageLoginLog(FunctionLogRequest functionLogRequest);

    /**
     * 保存日志
     * @param logDto
     * @return
     */
    Map<String, Object> saveLog(LogDto logDto);
}
