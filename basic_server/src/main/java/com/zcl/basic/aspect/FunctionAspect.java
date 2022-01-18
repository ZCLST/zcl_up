package com.zcl.basic.aspect;


import com.zcl.util.general.annotation.PointLog;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;

/**
 * @author 曾小白
 * @create 2021/7/9 16:49
 * @desc 功能日志切面
 **/
@Aspect
@Component
public class FunctionAspect {
    private HttpSession httpSession;
    @Autowired
//    private LogService logService;

    //切点为loginChek()方法
    @Pointcut("@annotation(com.zcl.util.general.annotation.PointLog)")
    private void pointCut() {

    }

    @Around("pointCut()")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        System.out.println("环绕通知：---------------------");
        //获得方法执行后的返回值
        Object proceed = pjp.proceed();//让目标方法执行

        //保存到功能日志表中
        //获得请求的方法
        MethodSignature signature = (MethodSignature) pjp.getSignature();
        Method method = signature.getMethod();
        //获取方法上的注解
        PointLog logAnnotation = method.getAnnotation(PointLog.class);
        if (logAnnotation != null) {
            // 注解上的描述
            String value = logAnnotation.value();
            String id = logAnnotation.id();
//            //获取当前时间
//            String date = DateUtils.getNowTime();
//            //获取当前用户名
//            String userName = (String) SessionUtil.getSessionAttribute("userName");
//            String SysFunName = LogStatus.getNameByCode(id);
//            Log log = new Log();
//            log.setCreateTime(date);
//            log.setUserName(userName);
//            log.setAction(SysFunName);
//            logService.addLog(log);
        }
        return proceed;
    }
}





