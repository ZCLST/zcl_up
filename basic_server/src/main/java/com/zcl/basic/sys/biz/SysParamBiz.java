package com.zcl.basic.sys.biz;

import com.zcl.basic.sys.model.SysParam;

/**

 * @author  zcl

 * @create  2022/2/12 10:44

 * @desc    系统参数核心业务层

 **/
public interface SysParamBiz {
    /**
     * 根据code查找value
     * @param redisHandleNumCode
     */
    SysParam findParamValueByCode(String redisHandleNumCode);
}
