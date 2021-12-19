package com.zcl.auth.user.vo;

import lombok.Data;

/**
 * @author 曾小白
 * @create 2021/7/28 15:13
 * @desc 用户名、tokenVO类
 **/
@Data
public class UserTokenVo {
    private String uName;
    private String token;
}