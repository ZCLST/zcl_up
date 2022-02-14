package com.zcl.basic.log.biz.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zcl.basic.log.biz.LogBiz;
import com.zcl.basic.log.dto.LogDto;
import com.zcl.basic.log.model.Log;
import com.zcl.basic.log.request.FunctionLogRequest;
import com.zcl.basic.log.service.LogService;
import com.zcl.basic.log.vo.ActionVo;
import com.zcl.basic.log.vo.FunctionLogPageVo;
import com.zcl.util.general.enums.LogTypeEnum;
import com.zcl.util.general.enums.SysCodeEnum;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import com.zcl.util.general.util.DateUtils;
import com.zcl.util.general.util.JedisUtil;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
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
                ActionVo actionVo = new ActionVo();
                actionVo.setKey(m.getCode());
                actionVo.setAction(m.getDesc());
                list.add(actionVo);
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

    @Override
    public Map<String, Object> saveLog(LogDto logDto) {
        Log log = BeanUtil.convert(logDto, Log.class);
        logService.saveLog(log);
        return CommonResponse.setResponseData(null);
    }

    @Override
    public Map<String, Object> saveFunLog(String functionId) {
        //获取当前时间
        String date = DateUtils.getNowTime();
        //获取当前用户ID
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

        String token = request.getHeader(SysCodeEnum.HEADER_NAME.getCode());
        Jedis jedis = JedisUtil.getJedis();
        String uId = jedis.get(token);
        String functionName = LogTypeEnum.getDescByCode(functionId).getDesc();
        Log log = new Log();
        log.setAction(functionName);
        log.setCreateUser(uId);
        log.setCreateTime(date);
        logService.saveLog(log);
        return null;
    }


    private IPage<FunctionLogPageVo> handleRequest(FunctionLogRequest functionLogRequest) {
        IPage<FunctionLogPageVo> logPage = new Page<>(functionLogRequest.getPageIndex(), functionLogRequest.getPageSize());
        //设置开始时间、结束时间
        if (!CollectionUtils.isEmpty(functionLogRequest.getDate())) {
            functionLogRequest.setBeginDate(functionLogRequest.getDate().get(0));
            functionLogRequest.setEndDate(functionLogRequest.getDate().get(1));
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
