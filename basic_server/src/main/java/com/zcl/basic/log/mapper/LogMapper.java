package com.zcl.basic.log.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.basic.log.model.Log;
import com.zcl.basic.log.request.FunctionLogRequest;
import com.zcl.basic.log.vo.FunctionLogPageVo;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**

 * @author  zcl

 * @create  2022/1/16 17:18

 * @desc    日志持久层

 **/
@Repository
public interface LogMapper extends BaseMapper<Log> {
    /**
     * 动态分页查询功能日志
     * @param logPage
     * @param functionLogRequest
     * @return
     */
    IPage<FunctionLogPageVo> selectPageFunctionLog(@Param("logPage") IPage<FunctionLogPageVo> logPage, @Param("functionLogRequest") FunctionLogRequest functionLogRequest);

    /**
     * 动态分页查询登录日志
     * @param logPage
     * @param functionLogRequest
     * @return
     */
    IPage<FunctionLogPageVo> selectPageLoginLog(@Param("logPage") IPage<FunctionLogPageVo> logPage,@Param("functionLogRequest") FunctionLogRequest functionLogRequest);
}
