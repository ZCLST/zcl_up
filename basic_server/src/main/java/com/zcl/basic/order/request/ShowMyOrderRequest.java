package com.zcl.basic.order.request;

import com.zcl.basic.product.request.PageIndexRequest;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

/**
 * @author zcl
 * @create 2022/2/28 20:25
 * @desc 我的订单请求类
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShowMyOrderRequest extends PageIndexRequest {
    /**
     * 订单号
     */
    private String orderNum;

    /**
     * 订单状态
     */
    @NotBlank(message = "status不能为空")
    private String status;
}
