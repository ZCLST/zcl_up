package com.zcl.basic.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zcl.basic.sys.mapper.SysParamMapper;
import com.zcl.basic.sys.model.SysParam;
import com.zcl.basic.sys.service.SysParamService;
import org.springframework.stereotype.Service;

/**

 * @author  zcl

 * @create  2022/2/12 10:54

 * @desc    系统参数通用业务实现层

 **/
@Service
public class SysParamServiceImpl implements SysParamService {
    private SysParamMapper sysParamMapper;

    public SysParamServiceImpl(SysParamMapper sysParamMapper) {
        this.sysParamMapper = sysParamMapper;
    }

    @Override
    public SysParam findParamValueByCode(String redisHandleNumCode) {
        QueryWrapper<SysParam> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(SysParam.CODE,redisHandleNumCode);
        return sysParamMapper.selectOne(queryWrapper);
    }
}
