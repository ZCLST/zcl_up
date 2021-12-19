package com.zcl.gateway.util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.util.ResourceBundle;

/**
 * @author zcl
 * @create 2021/7/25 18:30
 * @desc jedis工具类
 **/
public class JedisUtil {
    private static JedisPool jedisPool = null;
    private static String host = null;
    private static int port;
    private static int maxToal;
    private static int maxIdel;

    //初始化
    static {
        ResourceBundle redis = ResourceBundle.getBundle("redis");
        host = redis.getString("spring.redis.host");
        port = Integer.parseInt(redis.getString("spring.redis.port"));
        maxToal = Integer.parseInt(redis.getString("spring.redis.maxToal"));
        maxIdel = Integer.parseInt(redis.getString("spring.redis.maxIdel"));
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        jedisPoolConfig.setMaxIdle(maxIdel);
        jedisPoolConfig.setMaxTotal(maxToal);
        jedisPool = new JedisPool(jedisPoolConfig, host, port);
    }

    public static Jedis getJedis() {
        return jedisPool.getResource();
    }

}
