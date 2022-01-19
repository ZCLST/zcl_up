package com.zcl.auth.aspect;


import com.zcl.auth.feign.log.client.LogFeignClient;
import com.zcl.auth.feign.log.dto.LogDto;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.LoginRequest;
import com.zcl.auth.user.service.UserService;
import com.zcl.util.general.annotation.PointLog;
import com.zcl.util.general.enums.LogTypeEnum;
import com.zcl.util.general.enums.SysCodeEnum;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.util.DateUtils;
import com.zcl.util.general.util.JedisUtil;
import com.zcl.util.general.util.MD5Util;
import io.jsonwebtoken.lang.Assert;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

/**
 * @author 曾小白
 * @create 2022/1/18 12:44
 * @desc 登出切面类
 **/
@Aspect
@Component
public class LogOutAspect {
    @Autowired
    private LogFeignClient logFeignClient;
    @Autowired
    private UserService userService;
    private String userName;
    private String userId;

    //切点为loginChek()方法
    @Pointcut("execution(* com.zcl.auth.user.controller.UserController.logOut(..))")
    private void pointCut() {
    }

    //前置通知 用来赋值
    @Before("pointCut()")
    public void before(JoinPoint joinPoint) {
        System.out.println("-----------前置通知--------");
        //获取当前用户ID
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

        String token = request.getHeader(SysCodeEnum.HEADER_NAME.getCode());
        Jedis jedis = JedisUtil.getJedis();
        userId = jedis.get(token);
        System.out.println("-----------前置通知完--------");
    }

    @Around("pointCut()")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        System.out.println("环绕通知：---------------------");
        //获得方法执行后的返回值
        Object proceed = pjp.proceed();//让目标方法执行
        //获取当前时间
        String date = DateUtils.getNowTime();
        LogDto logDto = new LogDto();
        logDto.setAction(LogTypeEnum.LOGOUT.getDesc());
        logDto.setCreateUser(userId);
        logDto.setCreateTime(date);
        logFeignClient.saveLog(logDto);
        return proceed;
    }
}
