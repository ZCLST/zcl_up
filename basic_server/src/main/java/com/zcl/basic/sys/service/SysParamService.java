package com.zcl.basic.sys.service;

import com.zcl.basic.sys.model.SysParam;

/**

 * @author  zcl

 * @create  2022/2/12 10:54

 * @desc    系统参数通用业务实现层

 **/
public interface SysParamService {
    /**
     * 根据code查找value
     * @param redisHandleNumCode
     * @return
     */
    SysParam findParamValueByCode(String redisHandleNumCode);
}
