package com.zcl.auth.aspect;

import com.zcl.auth.feign.log.client.LogFeignClient;
import com.zcl.auth.feign.log.dto.LogDto;
import com.zcl.util.general.annotation.PointLog;
import com.zcl.util.general.enums.LogTypeEnum;
import com.zcl.util.general.enums.SysCodeEnum;
import com.zcl.util.general.util.DateUtils;
import com.zcl.util.general.util.JedisUtil;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
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
 * @create 2021/7/9 16:49
 * @desc 功能日志切面
 **/
@Aspect
@Component
public class FunctionAspect {
    @Autowired
    private LogFeignClient logFeignClient;

    //切点为loginChek()方法
    @Pointcut("@annotation(com.zcl.util.general.annotation.PointLog)")
    private void pointCut() {

    }

    @Around("pointCut()")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        System.out.println("环绕通知：---------------------");
        //获得方法执行后的返回值
        Object proceed = pjp.proceed();//让目标方法执行
        //获得请求的方法
        MethodSignature signature = (MethodSignature) pjp.getSignature();
        Method method = signature.getMethod();
        //获取方法上的注解
        PointLog logAnnotation = method.getAnnotation(PointLog.class);
        if (logAnnotation != null) {
            // 注解上的描述
            LogTypeEnum logTypeEnum = logAnnotation.id();
            //获取当前用户ID
            HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

            String token = request.getHeader(SysCodeEnum.HEADER_NAME.getCode());
            Jedis jedis = JedisUtil.getJedis();
            String uId = jedis.get(token);
            String functionName = logTypeEnum.getDesc();
            LogDto logDto = new LogDto();
            logDto.setAction(functionName);
            logDto.setCreateUser(uId);
            logFeignClient.saveLog(logDto);
        }
        return proceed;
    }
}






