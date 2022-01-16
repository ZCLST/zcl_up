package com.zcl.basic.log.biz.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zcl.basic.enums.LogTypeEnum;
import com.zcl.basic.log.biz.LogBiz;
import com.zcl.basic.log.dto.ActionDto;
import com.zcl.basic.log.request.FunctionLogRequest;
import com.zcl.basic.log.service.LogService;
import com.zcl.basic.log.vo.ActionVo;
import com.zcl.basic.log.vo.FunctionLogPageVo;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import com.zcl.util.general.util.DateUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author zcl
 * @create 2022/1/16 17:19
 * @desc 日志业务实现层
 **/
@Service
public class LogBizImpl implements LogBiz {

    private LogService logService;

    public LogBizImpl(LogService logService) {
        this.logService = logService;
    }

    @Override
    public Map<String, Object> selectPageFunctionLog(FunctionLogRequest functionLogRequest) {
        //加工请求体
        IPage<FunctionLogPageVo> logPage = this.handleRequest(functionLogRequest);
        IPage<FunctionLogPageVo> result = logService.selectPageFunctionLog(logPage, functionLogRequest);
        return CommonResponse.setResponseData(result);
    }

    @Override
    public Map<String, Object> getSelectOption() {
        List<ActionVo> list = new ArrayList<>();
        for (LogTypeEnum m :
                LogTypeEnum.values()) {
            if (!m.getCode().equals("1") && !m.getCode().equals("2")) {
                ActionVo actionVo = new ActionVo();
                actionVo.setKey(m.getCode());
                actionVo.setAction(m.getDesc());
                list.add(actionVo);
            }

        }
        return CommonResponse.setResponseData(list);
    }

    @Override
    public Map<String, Object> selectPageLoginLog(FunctionLogRequest functionLogRequest) {
        //加工请求体
        IPage<FunctionLogPageVo> logPage = this.handleRequest(functionLogRequest);
        IPage<FunctionLogPageVo> result = logService.selectPageLoginLog(logPage, functionLogRequest);
        return CommonResponse.setResponseData(result);
    }


    private IPage<FunctionLogPageVo> handleRequest(FunctionLogRequest functionLogRequest) {
        IPage<FunctionLogPageVo> logPage = new Page<>(functionLogRequest.getPageIndex(), functionLogRequest.getPageSize());
        //设置开始时间、结束时间
        if (!CollectionUtils.isEmpty(functionLogRequest.getDate())) {
            functionLogRequest.setBeginDate(DateUtils.getTime(functionLogRequest.getDate().get(0)));
            functionLogRequest.setEndDate(DateUtils.getTime(functionLogRequest.getDate().get(1)));
        }
        //设置事件
        LogTypeEnum descByCode = LogTypeEnum.getDescByCode(functionLogRequest.getAction());
        if (!StringUtils.isEmpty(descByCode)) {
            functionLogRequest.setAction(descByCode.getDesc());
        } else {
            functionLogRequest.setAction(null);
        }
        return logPage;
    }
}
