package com.zcl.mq;

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
    public final static String TTL_ENAME = "ttl_Exchange";//TTL交换机
    public final static String EMAIL_ENAME = "email_Exchange";//信件交换机
    public final static String DEAD_ENAME = "dead_Exchange";//死信交换机
    public final static String USER_ENAME = "user_Exchange";//用户交换机
    public final static String LOG_ENAME = "log_Exchange";//日志交换机
    public final static String PRODUCT_ENAME = "product_Exchange";//商品交换机
    //队列名称
    public final static String USER_QUEUE = "user_queue";//用户队列
    public final static String LOG_QUEUE = "log_queque";//日志队列
    public final static String PRO_QUEUE = "pro_queque";//商品队列
    public final static String EMAIL_QUEUE = "eamil_queque";//商品队列
    public final static String USER_TTLQUEUE = "user_ttlqueque";//用户延迟队列
    public final static String LOG_TTLQUEUE = "log_ttlqueque";//日志延迟队列
    public final static String PRO_TTLQUEUE = "pro_ttlqueque";//商品延迟队列
    public final static String EMAIL_TTLQUEUE = "email_ttlqueque";//信件队列
    public final static String DEAD_QUEUE = "dead_queque";//死信队列
    //绑定键
    public final static String EMAIL_RKEY = "email.q1";//信件队列路由键
    public final static String USER_RKEY = "user.q1";//用户队列路由键
    public final static String LOG_RKEY = "log.q1";//日志队列路由键
    public final static String PRO_RKEY = "pro.q1";//商品队列路由键
    public final static String DEAD_RKEY = "dead.q1";//信息队列路由键
    public final static String EMAIL_TTLRKEY = "email.*";//信件延迟队列路由键
    public final static String USER_TTLRKEY = "user.*";//用户延迟队列路由键
    public final static String LOG_TTLRKEY = "log.*";//日志延迟队列路由键
    public final static String PRO_TTLRKEY = "pro.*";//商品延迟队列路由键

    //email队列持久化
    @Bean
    public Queue emailQueue() {
        return new Queue(EMAIL_QUEUE, true);
    }

    //用户队列持久化
    @Bean
    public Queue userQueue() {
        return new Queue(USER_QUEUE, true);
    } //email队列持久化

    //日志队列持久化
    @Bean
    public Queue logQueue() {
        return new Queue(LOG_QUEUE, true);
    } //email队列持久化

    //商品队列持久化
    @Bean
    public Queue proQueue() {
        return new Queue(PRO_QUEUE, true);
    } //email队列持久化

    //信件延迟队列持久化
    @Bean
    public Queue emailTTLQueue() {
        return bindDead(EMAIL_QUEUE);
    }

    //用户延迟队列持久化
    @Bean
    public Queue userTTLQueue() {
        return bindDead(USER_QUEUE);
    }

    //日志延迟队列持久化
    @Bean
    public Queue logTTLQueue() {
        return bindDead(LOG_QUEUE);
    }

    //商品延迟队列持久化
    @Bean
    public Queue proTTLQueue() {
        return bindDead(PRO_QUEUE);
    }

    //DEL队列持久化
    @Bean
    public Queue delQueue() {
        return new Queue(DEAD_QUEUE, true);
    }


    //主题交换机
    //信件交换机持久化
    @Bean
    TopicExchange emailExchange() {
        return new TopicExchange(EMAIL_ENAME, true, false);
    }

    //用户交换机持久化
    @Bean
    TopicExchange userExchange() {
        return new TopicExchange(EMAIL_ENAME, true, false);
    }

    //日志交换机持久化
    @Bean
    TopicExchange logExchange() {
        return new TopicExchange(LOG_ENAME, true, false);
    }

    //商品交换机持久化
    @Bean
    TopicExchange proExchange() {
        return new TopicExchange(PRODUCT_ENAME, true, false);
    }

    //延迟交换机持久化
    @Bean
    TopicExchange ttlExchange() {
        return new TopicExchange(TTL_ENAME, true, false);
    }

    //死信交换机持久化
    @Bean
    TopicExchange deadExchange() {
        return new TopicExchange(DEAD_ENAME, true, false);
    }


    //信件交换机绑定队列、绑定键
    @Bean
    Binding bindingEmailExchangeMessage() {
        return BindingBuilder.bind(emailQueue()).to(emailExchange()).with(EMAIL_RKEY);
    }

    //用户交换机绑定队列、绑定键
    @Bean
    Binding bindingUserExchangeMessage() {
        return BindingBuilder.bind(emailQueue()).to(emailExchange()).with(EMAIL_RKEY);
    }

    //日志交换机绑定队列、绑定键
    @Bean
    Binding bindingLogExchangeMessage() {
        return BindingBuilder.bind(logQueue()).to(logExchange()).with(LOG_RKEY);
    }

    //商品交换机绑定队列、绑定键
    @Bean
    Binding bindingProExchangeMessage() {
        return BindingBuilder.bind(proQueue()).to(proExchange()).with(PRO_RKEY);
    }

    //信件延迟交换机绑定队列、绑定键
    @Bean
    Binding bindMamilTTlExchangeMessage() {
        return BindingBuilder.bind(emailTTLQueue()).to(ttlExchange()).with(EMAIL_TTLRKEY);
    }
    //用户延迟交换机绑定队列、绑定键
    @Bean
    Binding bindUserTTLExchangeMessage() {
        return BindingBuilder.bind(userTTLQueue()).to(ttlExchange()).with(USER_TTLRKEY);
    }
    //日志延迟交换机绑定队列、绑定键
    @Bean
    Binding bindLogTTLExchangeMessage() {
        return BindingBuilder.bind(logTTLQueue()).to(ttlExchange()).with(LOG_TTLRKEY);
    }
    //商品延迟交换机绑定队列、绑定键
    @Bean
    Binding bindProTTLExchangeMessage() {
        return BindingBuilder.bind(proTTLQueue()).to(ttlExchange()).with(PRO_TTLRKEY);
    }


    //死信交换机绑定队列、绑定键
    @Bean
    Binding bindingDeadExchangeMessage() {
        return BindingBuilder.bind(delQueue()).to(deadExchange()).with(DEAD_RKEY);
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

    public Queue bindDead(String qName) {
        Map<String, Object> params = new HashMap<>();
        //队列、消息超时后的配置
        // x-dead-letter-exchange 声明了队列里的死信转发到的DLX名称，
        params.put("x-dead-letter-exchange", DEAD_ENAME);
        // x-dead-letter-routing-key 声明了这些死信在转发时携带的 routing-key 名称。
        params.put("x-dead-letter-routing-key", DEAD_RKEY);
        //设置超时时间 2分钟，整个队列过期
        //params.put( "x-expires",1000*60*2);
        // 队列中的消息未被消费则2分钟后过期
        params.put("x-message-ttl", 1000 * 60 * 2);
//            return new Queue(E_TTLQUEUE,true);
        return new Queue(qName, true, false, false, params);
    }

}
