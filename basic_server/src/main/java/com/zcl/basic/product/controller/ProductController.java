package com.zcl.basic.product.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.rabbitmq.client.Channel;
import com.zcl.basic.product.biz.ProductBiz;
import com.zcl.basic.product.engine.model.ProductIndex;
import com.zcl.basic.product.model.Product;
import com.zcl.basic.product.request.*;
import com.zcl.util.general.util.JedisUtil;
import lombok.extern.slf4j.Slf4j;
import org.elasticsearch.common.recycler.Recycler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.support.AmqpHeaders;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Map;

/**
 * @author zcl
 * @create 2022/1/28 11:51
 * @desc 商品控制层
 **/
@RestController
@RequestMapping("/productController")
@Slf4j
public class ProductController {
    private ProductBiz productBiz;

    public ProductController(ProductBiz productBiz) {
        this.productBiz = productBiz;
    }

    /**
     * 分页查询商品管理界面
     *
     * @param selectPageProductRequest
     * @return
     */
    @PostMapping(value = "/selectPageProduct.json")
    public Map<String, Object> selectPageProduct(@RequestBody SelectPageProductRequest selectPageProductRequest) throws IOException {
        return productBiz.selectPageProduct(selectPageProductRequest);
    }

    /**
     * 分页查询商城商品
     *
     * @param selectPageProductRequest
     * @return
     */
    @PostMapping(value = "/selectPageProductShop.json")
    public Map<String, Object> selectPageProductShop(@RequestBody SelectPageProductRequest selectPageProductRequest) {
        return productBiz.selectPageProductShop(selectPageProductRequest);
    }

    /**
     * 新增商品
     *
     * @param productRequest
     * @return
     */
    @PostMapping(value = "/insertProduct.json")
    public Map<String, Object> insertProduct(@RequestBody ProductSaveRequest productRequest) {
        return productBiz.insertProduct(productRequest);
    }

    /**
     * 更新商品
     *
     * @param productUpdateRequest
     * @return
     */
    @PostMapping(value = "/updateProduct.json")
    public Map<String, Object> updateProduct(@RequestBody ProductUpdateRequest productUpdateRequest) {
        return productBiz.updateProduct(productUpdateRequest);
    }

    /**
     * 批量更新商品上下架状态
     *
     * @param updateProductStatusRequest
     * @return
     */
    @PostMapping(value = "/updateProductStatus.json")
    public Map<String, Object> updateProductStatus(@RequestBody UpdateProductStatusRequest updateProductStatusRequest) {
        return productBiz.updateProductStatus(updateProductStatusRequest);
    }

    /**
     * 根据ID查询商品
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/findProductById.json")
    public Map<String, Object> findProductById(String id) {
        return productBiz.findProductById(id);
    }

    /**
     * 加入购物车
     *
     * @param productId
     * @return
     */
    @PostMapping(value = "/addCart.json")
    public Map<String, Object> addCart(@RequestBody String productId) {
        return productBiz.addCart(productId);
    }

    /**
     * 查看购物车
     *
     * @param showCartRequest
     * @return
     */
    @PostMapping(value = "/showCart.json")
    public Map<String, Object> showCart(@RequestBody ShowCartRequest showCartRequest) {
        return productBiz.showCart(showCartRequest);
    }

    /**
     * 保存商品至redis、es（消费者）手动确认
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/saveProductToEsAndRedis.json", method = RequestMethod.POST)
    @RabbitListener(queues = "product_queue")
    @ResponseBody
    public void saveProductToEsAndRedis(@Payload String message, @Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag, Channel channel) throws IOException {
        try{
            Product product = JSONArray.parseObject(message, Product.class);
            productBiz.saveProductToEsAndRedis(product);
            channel.basicAck(deliveryTag, true); //第二个参数，手动确认可以被批处理，当该参数为 true 时，则可以一次性确认 delivery_tag 小于等于传入值的所有消息
            log.info("-----------------------------------延迟信件消息手动确认完毕-----------------------");
        }catch (Exception e) {
            e.printStackTrace();
            //做失败处理，true为重回队列，false为丢弃,返回头部
            //消息如果拒绝，大概率是异常，多以最好丢弃，做个消息补偿。
            //deliveryTag:该消息的index
            //multiple：是否批量.true:将一次性拒绝所有小于deliveryTag的消息。
            //requeue：被拒绝的是否重新入队列
            channel.basicNack(deliveryTag, false, false);
        }
    }

    /**
     * 保存商品至redis、es（监听死信队列（TTL+死信队列=消息延迟））手动确认
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/saveTtlProductToEsAndRedis.json", method = RequestMethod.POST)
    @RabbitListener(queues = "product_del_queue")
    @ResponseBody
    public void saveTtlProductToEsAndRedis(@Payload String message, @Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag, Channel channel) throws IOException {
        try{
            Product product = JSONArray.parseObject(message, Product.class);
            //消息补偿存在延迟，所以查数据库最新数据
            productBiz.saveTtlProductToEsAndRedis(product.getProductId());
            channel.basicAck(deliveryTag, true); //第二个参数，手动确认可以被批处理，当该参数为 true 时，则可以一次性确认 delivery_tag 小于等于传入值的所有消息
            log.info("-----------------------------------延迟信件消息手动确认完毕-----------------------");
        }catch (Exception e) {
            e.printStackTrace();
            //做失败处理，true为重回队列，false为丢弃,返回头部
            //消息如果拒绝，大概率是异常，多以最好丢弃，做个消息补偿。
            //deliveryTag:该消息的index
            //multiple：是否批量.true:将一次性拒绝所有小于deliveryTag的消息。
            //requeue：被拒绝的是否重新入队列
            channel.basicNack(deliveryTag, false, false);
        }
    }
}
