package com.zcl.basic.log.controller;

import com.zcl.basic.log.biz.LogBiz;
import com.zcl.basic.log.dto.LogDto;
import com.zcl.basic.log.request.FunctionLogRequest;
import com.zcl.util.general.annotation.PointLog;
import com.zcl.util.general.enums.LogTypeEnum;
import com.zcl.util.general.enums.SysCodeEnum;
import com.zcl.util.general.util.DateUtils;
import com.zcl.util.general.util.JedisUtil;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Map;

/**
 * @author zcl
 * @create 2022/1/16 17:17
 * @desc 日志控制层
 **/
@RestController
@RequestMapping("/logController")
public class LogController {
    private LogBiz logBiz;

    public LogController(LogBiz logBiz) {
        this.logBiz = logBiz;
    }

    /**
     * 动态分页查询功能日志
     *
     * @param functionLogRequest
     * @return
     */
    @PointLog(id = "7", value = "功能日志")
    @PostMapping("/selectPageFunctionLog.json")
    public Map<String, Object> selectPageFunctionLog(@RequestBody FunctionLogRequest functionLogRequest) {
        return logBiz.selectPageFunctionLog(functionLogRequest);
    }

    /**
     * 动态分页查询登录日志
     *
     * @param functionLogRequest
     * @return
     */
    @PointLog(id = "6", value = "登录日志")
    @PostMapping("/selectPageLoginLog.json")
    public Map<String, Object> selectPageLoginLog(@RequestBody FunctionLogRequest functionLogRequest) {
        return logBiz.selectPageLoginLog(functionLogRequest);
    }

    /**
     * 初始化事件下拉选择框
     *
     * @param
     * @return
     */
    @GetMapping("/initSelect.json")
    public Map<String, Object> initSelect() {
        return logBiz.getSelectOption();
    }

    /**
     * 保存日志
     *
     * @param logDto
     * @return
     */
    @PostMapping("/saveLog.json")
    public Map<String, Object> saveLog(@RequestBody LogDto logDto) {
        return logBiz.saveLog(logDto);
    }

    /**
     * 保存功能日志
     * @param functionId
     * @return
     */
    @PostMapping("/saveFunLog.json")
    public Map<String, Object> saveFunLog(@RequestBody String functionId) {
        return logBiz.saveFunLog(functionId);
    }
}
