package com.zcl.basic.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.config.SimpleRabbitListenerContainerFactory;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;

/**
 * @author zcl
 * @create 2021/7/5 16:49
 * @desc rabbitmq配置类（主题模式） TTL实现:延迟队列+死信处理
 **/
@Configuration
@Slf4j
public class RabbitMqConfig {

    //交换机名称
    public final static String PRODUCT_EXCHANGE_NAME = "product_exchange";//商品交换机
    public final static String PRODUCT_DEL_EXCHANGE_NAME = "product_del_exchange";//商品死信交换机
    //队列名称
    public final static String PRODUCT_QUEUE = "product_queue";//商品队列
    public final static String PRODUCT_TTL_QUEUE = "product_ttl_queue";//商品延时队列
    public final static String PRODUCT_DEL_QUEUE = "product_del_queue";//商品死信队列
    //路由键
    public final static String PRODUCT_SAVE_ROUTING_KEY = "product.save_redis_es";//商品持久化中间件路由key
    public final static String PRODUCT_DEL_ROUTING_KEY = "product.del";//死信转发key

    //---------------主题交换机持久化-----------------------
    //商品交换机
    @Bean
    TopicExchange productExchange() {
        return new TopicExchange(PRODUCT_EXCHANGE_NAME, true, false);
    }
    //商品死信交换机
    @Bean
    TopicExchange productDelExchange() {
        return new TopicExchange(PRODUCT_DEL_EXCHANGE_NAME, true, false);
    }

    //------------------队列持久化---------------------------
    //商品队列持久化
    @Bean
    public Queue productQueue() {
        return new Queue(PRODUCT_QUEUE, true);
    }
    //商品ttl队列持久化
    @Bean
    public Queue productTtlQueue() {
        Map<String, Object> params = new HashMap<>();
        //队列、消息超时后的配置
        // x-dead-letter-exchange 声明了队列里的死信转发到的交换机名称，
        params.put("x-dead-letter-exchange", PRODUCT_DEL_EXCHANGE_NAME);
        // x-dead-letter-routing-key 声明了这些死信在转发时携带的 routing-key 名称。
        params.put("x-dead-letter-routing-key", PRODUCT_DEL_ROUTING_KEY);
        //设置超时时间 2分钟，整个队列过期
        //params.put( "x-expires",1000*60*2);
        // 队列中的消息未被消费则2分钟后过期
        params.put("x-message-ttl", 1000 * 60 * 1);
        return new Queue(PRODUCT_TTL_QUEUE, true, false, false, params);
    }
    //商品死信队列持久化
    @Bean
    public Queue productDelQueue() {
        return new Queue(PRODUCT_DEL_QUEUE, true);
    }

    //------------------交换机绑定队列、绑定键---------------------------
    //商品交换机绑定队列、绑定键
    @Bean
    Binding bindingProductExchangeMessage() {
        return BindingBuilder.bind(productQueue()).to(productExchange()).with(PRODUCT_SAVE_ROUTING_KEY);
    }
    //商品TTL交换机绑定队列、绑定键,延时队列与消息生成者共用一个交换机一个key，只是队列不同
    @Bean
    Binding bindingProductTtlExchangeMessage() {
        return BindingBuilder.bind(productTtlQueue()).to(productExchange()).with(PRODUCT_SAVE_ROUTING_KEY);
    }
    //商品死信交换机绑定队列、绑定键
    @Bean
    Binding bindingProductDelExchangeMessage() {
        return BindingBuilder.bind(productDelQueue()).to(productDelExchange()).with(PRODUCT_DEL_ROUTING_KEY);
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


}
