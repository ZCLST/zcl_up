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
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;

/**
 * @author 曾小白
 * @create 2022/1/18 12:44
 * @desc 登录日志切面类
 **/
@Aspect
@Component
public class LogInAspect {
    @Autowired
    private LogFeignClient logFeignClient;
    @Autowired
    private UserService userService;
    private String userName;
    private String userId;

    //切点为loginChek()方法
    @Pointcut("execution(* com.zcl.auth.user.controller.UserController.checkUser(..))")
    private void pointCut() {
    }

    //前置通知 用来赋值
    @Before("pointCut()")
    public void before(JoinPoint joinPoint) {
        System.out.println("-----------前置通知--------");
        Object[] args = joinPoint.getArgs();
        LoginRequest user = (LoginRequest) args[0];
        userName = user.getuName();
        String password = user.getPassword();
        String md5Pw = null;
        try {
            md5Pw = MD5Util.EncoderByMd5(password);
        } catch (Exception e) {
            e.printStackTrace();
            throw new ZfException("用户名或密码不正确");
        }
        User userByNameAndPassWord = userService.findUserByNameAndPassWord(userName, md5Pw);
        if (userByNameAndPassWord != null) {
            userId = userByNameAndPassWord.getuId();
        }
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
        logDto.setAction(LogTypeEnum.LOGIN.getDesc());
        logDto.setCreateUser(userId);
        logDto.setCreateTime(date);
        logFeignClient.saveLog(logDto);
        return proceed;
    }
}
