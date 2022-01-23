package com.zcl.basic;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**

 * @author  曾小白

 * @create  2021/7/15 15:15

 * @desc  基础微服务

 **/
@SpringBootApplication(scanBasePackages = "com.zcl")
@EnableEurekaClient
@EnableFeignClients
@MapperScan("com.zcl.basic.*.mapper*")
public class BasicApplication {
    public static void main(String[] args) {
        SpringApplication.run(BasicApplication.class,args);
    }
}
