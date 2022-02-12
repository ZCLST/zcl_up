package com.zcl.basic.sys.biz.impl;

import com.zcl.basic.sys.biz.SysParamBiz;
import com.zcl.basic.sys.model.SysParam;
import com.zcl.basic.sys.service.SysParamService;
import org.springframework.stereotype.Service;

/**

 * @author  zcl

 * @create  2022/2/12 10:45

 * @desc    系统参数核心业务实现层

 **/
@Service
public class SysParamBizImpl implements SysParamBiz {
    private SysParamService sysParamService;

    public SysParamBizImpl(SysParamService sysParamService) {
        this.sysParamService = sysParamService;
    }

    @Override
    public SysParam findParamValueByCode(String redisHandleNumCode) {
      return   sysParamService.findParamValueByCode(redisHandleNumCode);
    }
}
