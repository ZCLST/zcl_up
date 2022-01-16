package com.zcl.basic.log.controller;

import com.zcl.basic.log.biz.LogBiz;
import com.zcl.basic.log.dto.ActionDto;
import com.zcl.basic.log.request.FunctionLogRequest;
import com.zcl.basic.log.vo.ActionVo;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import org.springframework.web.bind.annotation.*;

import java.util.List;
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
}
