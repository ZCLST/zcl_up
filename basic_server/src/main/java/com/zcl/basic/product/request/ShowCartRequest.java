package com.zcl.basic.product.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

/**

 * @author  zcl

 * @create  2022/2/12 16:58

 * @desc    查看购物车VO

 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShowCartRequest {
    /**
     * 用户ID
     */
    @NotBlank(message = "userId不能为空")
    private String userId;
    /**
     * 商品编号或名称
     */
    private String productCodeOrName;
}
