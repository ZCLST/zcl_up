package com.zcl.basic.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;

/**
 * @author zcl
 * @create 2021/8/21 12:04
 * @desc rabbitmq配置类
 **/
@Configuration
@Slf4j
public class RabbitMqConfig {

    //交换机名称
    public final static String TTL_EXCHANGE_NAME = "ttl_Exchange";//TTL延时队列交换机
    public final static String ORDER_EXCHANGE_NAME = "order_Exchange";//订单交换机
    public final static String LOG_EXCHANGE_NAME = "log_Exchange";//日志交换机
    public final static String USER_EXCHANGE_NAME = "user_Exchange";//用户交换机
    public final static String EMAIL_EXCHANGE_NAME = "email_Exchange";//信件交换机
    public final static String DEAD_EXCHANGE_NAME = "dead_Exchange";//死信交换机
    //队列名称
    public final static String USER_QUEUE = "user_queue";//用户队列
    public final static String LOG_QUEUE = "log_queque";//日志队列
    public final static String PRODUCT_QUEUE = "pro_queque";//商品队列
    public final static String EMAIL_QUEUE = "eamil_queque";//信件队列

    public final static String USER_TTL_QUEUE = "user_ttlqueque";//用户延迟队列
    public final static String LOG_TTL_QUEUE = "log_ttlqueque";//日志延迟队列
    public final static String PRODUCT_TTL_QUEUE = "pro_ttlqueque";//商品延迟队列
    public final static String EMAIL_TTL_QUEUE = "email_ttlqueque";//信件延迟队列
    public final static String DEAD_QUEUE = "dead_queque";//死信队列
    //绑定键
    public final static String EMAIL_ROUTER_KEY = "email.q1";//信件队列路由键
    public final static String USER_ROUTER_KEY = "user.q1";//用户队列路由键
    public final static String LOG_ROUTER_KEY = "log.q1";//日志队列路由键
    public final static String PRODUCT_ROUTER_KEY = "pro.q1";//商品队列路由键
    public final static String DEAD_ROUTER_KEY = "dead.q1";//信息队列路由键
    public final static String EMAIL_TTL_ROUTER_KEY = "email.*";//信件延迟队列路由键
    public final static String USER_TL_ROUTER_KEY = "user.*";//用户延迟队列路由键
    public final static String LOG_TL_ROUTER_KEY = "log.*";//日志延迟队列路由键
    public final static String PRODUCT_TL_ROUTER_KEY = "pro.*";//商品延迟队列路由键

    //---------------------------队列持久化开始---------------------------------------
    @Bean
    public Queue emailQueue() {
        return new Queue(EMAIL_QUEUE, true);
    }

    //生产者确认消息
    @Bean
    public RabbitTemplate createRabbitTemplate(ConnectionFactory connectionFactory) {
        RabbitTemplate rabbitTemplate = new RabbitTemplate();
        rabbitTemplate.setConnectionFactory(connectionFactory);
        //设置开启Mandatory,才能触发回调函数,无论消息推送结果怎么样都强制调用回调函数
        rabbitTemplate.setMandatory(true);

        rabbitTemplate.setConfirmCallback(new RabbitTemplate.ConfirmCallback() {
            @Override
            public void confirm(CorrelationData correlationData, boolean ack, String cause) {
                if (ack == false) {
                    log.error("---------------消息{}发送到交换机失败，报错:{}", correlationData, cause);
                }
                log.info("------------------确认confirm情况:{}，到达交换机成功", correlationData);
            }
        });
        //交换机没有找到queue触发，默认是直接丢弃消息，我们在这里可以进行处理丢弃信息
        rabbitTemplate.setReturnCallback(new RabbitTemplate.ReturnCallback() {
            @Override
            public void returnedMessage(Message message, int replyCode, String replyText, String exchange, String routingKey) {
                System.out.println("ReturnCallback:     " + "消息：" + message);
                System.out.println("ReturnCallback:     " + "回应码：" + replyCode);
                System.out.println("ReturnCallback:     " + "回应信息：" + replyText);
                System.out.println("ReturnCallback:     " + "交换机：" + exchange);
                System.out.println("ReturnCallback:     " + "路由键：" + routingKey);
            }
        });
        return rabbitTemplate;
    }

    public Queue bindDead(String exchangeName, String routerKey, String queueName) {
        Map<String, Object> params = new HashMap<>();
        //队列、消息超时后的配置
        // x-dead-letter-exchange 声明了队列里的死信转发到的DLX名称，
        params.put("x-dead-letter-exchange", exchangeName);
        // x-dead-letter-routing-key 声明了这些死信在转发时携带的 routing-key 名称。
        params.put("x-dead-letter-routing-key", routerKey);
        //设置超时时间 2分钟，整个队列过期
        //params.put( "x-expires",1000*60*2);
        // 队列中的消息未被消费则2分钟后过期
        params.put("x-message-ttl", 1000 * 60 * 2);
        return new Queue(queueName, true, false, false, params);
    }

}
