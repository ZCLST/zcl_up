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
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;

/**
 * @author 曾小白
 * @create 2022/1/18 12:44
 * @desc 登录日志切面类
 **/
@Slf4j
@Aspect
@Component
public class LogInAspect {
    @Autowired
    private LogFeignClient logFeignClient;
    @Autowired
    private UserService userService;

    //切点为loginChek()方法
    @Pointcut("execution(* com.zcl.auth.user.controller.UserController.checkUser(..))")
    private void pointCut() {
    }


    @Around("pointCut()")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        //获取当前时间
        String date = DateUtils.getNowTime();
        String userId = this.handleBefore(pjp);
        //让目标方法执行,获得方法执行后的返回值
        Object proceed = pjp.proceed();
        LogDto logDto = new LogDto();
        logDto.setAction(LogTypeEnum.LOGIN.getDesc());
        logDto.setCreateUser(userId);
        logDto.setCreateTime(date);
        logFeignClient.saveLog(logDto);
        return proceed;
    }

    private String handleBefore(ProceedingJoinPoint pjp) {
        Object[] args = pjp.getArgs();
        LoginRequest info = (LoginRequest) args[0];
        String userName = info.getuName();
        String password = info.getPassword();
        String md5Pw = null;
        try {
            md5Pw = MD5Util.EncoderByMd5(password);
        } catch (Exception e) {
            e.printStackTrace();
            throw new ZfException("密码加密失败");
        }
        User user = userService.findUserByNameAndPassWord(userName, md5Pw);
        if(Objects.isNull(user)) throw new ZfException("用户名或密码错误！");
        return user.getuId();
    }

}
