package com.zcl.util.general.util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.util.ResourceBundle;


public class JedisUtil {
    private static JedisPool jedisPool = null;
    private static String host = null;
    private static int port;
    private static int maxToal;
    private static int maxIdel;

    
    private static String passWord;
    
    private static Integer timeOut;


    static {
        ResourceBundle redis = ResourceBundle.getBundle("redis");
        host = redis.getString("spring.redis.host");
        port = Integer.parseInt(redis.getString("spring.redis.port"));
        maxToal = Integer.parseInt(redis.getString("spring.redis.maxToal"));
        maxIdel = Integer.parseInt(redis.getString("spring.redis.maxIdel"));
        passWord = redis.getString("spring.redis.password");
        timeOut= Integer.valueOf(redis.getString("spring.redis.timeout"));
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        jedisPoolConfig.setMaxIdle(maxIdel);
        jedisPoolConfig.setMaxTotal(maxToal);
        jedisPoolConfig.setMaxWaitMillis(timeOut);
        jedisPool = new JedisPool(jedisPoolConfig, host, port,timeOut,passWord);
    }

    
    public static Jedis getJedis() {
        return jedisPool.getResource();
    }

    
    public static void close(Jedis jedis) {
        if(jedis!=null){
            jedis.close();
        }
    }

    
    public static String buildKey(String format,Object... args){
      return   String.format(format, args);
    }


}
