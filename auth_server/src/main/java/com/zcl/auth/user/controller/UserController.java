package com.zcl.auth.user.controller;

import com.zcl.auth.user.biz.UserBiz;
import com.zcl.auth.user.request.LoginRequest;

import org.springframework.web.bind.annotation.*;

import java.util.Map;


@RestController
@RequestMapping("/userController")
public class UserController {
    private UserBiz userBiz;

    public UserController(UserBiz userBiz) {
        this.userBiz = userBiz;
    }

    
    @PostMapping("/checkUser.form")
    public Map<String, Object> checkUser(@RequestBody LoginRequest loginRequest) {
        return userBiz.checkUserLogin(loginRequest);
    }

    
    @GetMapping("/logOut.json")
    public Map<String, Object> logOut() {
        return userBiz.logOut();
    }

}
