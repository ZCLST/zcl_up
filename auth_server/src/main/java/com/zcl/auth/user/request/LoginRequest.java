package com.zcl.auth.user.request;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/**

 * @author  zcl

 * @create  2021/12/18 16:16

 * @desc    登录校验Request

 **/
@Data
public class LoginRequest {
    @NotBlank(message = "uName不能为空")
    private String uName;
    @NotBlank(message = "password不能为空")
    private String password;
}
