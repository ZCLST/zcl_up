package com.zcl.util.general.util;

import com.zcl.util.general.enums.SysCodeEnum;
import org.springframework.util.Assert;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;

/**
 * @author zcl
 * @create 2022/1/19 21:22
 * @desc 请求上下文工具类
 **/
public class ContextUtils {
    /**
     * 获取userId
     * @return
     */
    public static String getUserId() {
        //获取当前用户ID
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String token = request.getHeader(SysCodeEnum.HEADER_NAME.getCode());
        Assert.hasLength(token,"token已过期！");
        Jedis jedis = JedisUtil.getJedis();
        String uId = jedis.get(token);
        Assert.hasLength(uId,"uId已过期！");
        return uId;
    }
}
