package com.zcl.basic.order.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zcl.basic.order.mapper.OrderItemMapper;
import com.zcl.basic.order.model.OrderItem;
import com.zcl.basic.order.service.OrderItemService;
import com.zcl.basic.order.vo.OrderDetailVo;
import org.springframework.stereotype.Service;

import java.util.List;

/**

 * @author  zcl

 * @create  2022/2/28 22:08

 * @desc    订单项通用业务实现层

 **/
@Service
public class OrderItemServiceImpl implements OrderItemService {
    private OrderItemMapper orderItemMapper;

    public OrderItemServiceImpl(OrderItemMapper orderItemMapper) {
        this.orderItemMapper = orderItemMapper;
    }

    @Override
    public void deleteByOrderId(List<String> orderIds) {
        QueryWrapper<OrderItem> queryWrapper = new QueryWrapper<>();
        queryWrapper.in(OrderItem.ORDER_ID,orderIds);
        orderItemMapper.delete(queryWrapper);
    }

    @Override
    public List<OrderDetailVo> selectByOrderDetailOrderId(String orderId) {
        return orderItemMapper.selectByOrderDetailOrderId(orderId);
    }
}
