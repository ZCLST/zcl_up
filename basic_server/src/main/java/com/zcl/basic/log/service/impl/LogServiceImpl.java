package com.zcl.basic.log.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.basic.log.dto.ActionDto;
import com.zcl.basic.log.mapper.LogMapper;
import com.zcl.basic.log.request.FunctionLogRequest;
import com.zcl.basic.log.service.LogService;
import com.zcl.basic.log.vo.FunctionLogPageVo;
import org.springframework.stereotype.Service;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/1/16 17:20

 * @desc    日志通用业务实现层

 **/
@Service
public class LogServiceImpl implements LogService {

    private LogMapper logMapper;

    public LogServiceImpl(LogMapper logMapper) {
        this.logMapper = logMapper;
    }

    @Override
    public IPage<FunctionLogPageVo> selectPageFunctionLog(IPage<FunctionLogPageVo> logPage, FunctionLogRequest functionLogRequest) {
        return logMapper.selectPageFunctionLog(logPage, functionLogRequest);
    }

    @Override
    public IPage<FunctionLogPageVo> selectPageLoginLog(IPage<FunctionLogPageVo> logPage, FunctionLogRequest functionLogRequest) {
        return logMapper.selectPageLoginLog(logPage, functionLogRequest);
    }


}
