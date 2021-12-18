package com.zcl.mq;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

/**

 * @author  曾小白

 * @create  2021/7/15 15:04

 * @desc mq事件微服务

 **/
@SpringBootApplication
@EnableEurekaClient
public class MqActionApplication {
    public static void main(String[] args) {
        SpringApplication.run(MqActionApplication.class,args);
    }
}
