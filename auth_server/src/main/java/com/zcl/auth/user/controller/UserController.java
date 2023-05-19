package com.zcl.auth.user.controller;

import com.zcl.auth.user.biz.UserBiz;
import com.zcl.auth.user.request.LoginRequest;
import com.zcl.auth.user.request.UserPageRequest;
import com.zcl.auth.user.request.UserRequest;
import com.zcl.util.general.annotation.PointLog;
import com.zcl.util.general.enums.LogTypeEnum;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * @author zcl
 * @create 2021/12/18 16:06
 * @desc 用户控制层
 **/
@RestController
@RequestMapping("/userController")
public class UserController {
    private UserBiz userBiz;

    public UserController(UserBiz userBiz) {
        this.userBiz = userBiz;
    }

    /**
     * 用户登录校验
     *
     * @param loginRequest
     * @return
     */
    @PostMapping("/checkUser.form")
    public Map<String, Object> checkUser(@RequestBody LoginRequest loginRequest) {
        return userBiz.checkUserLogin(loginRequest);
    }

    /**
     * 用户登出
     *
     * @return
     */
    @GetMapping("/logOut.json")
    public Map<String, Object> logOut() {
        return userBiz.logOut();
    }

}
