package com.zcl.auth.user.controller;

import com.zcl.auth.user.biz.UserBiz;
import com.zcl.auth.user.request.LoginRequest;
import com.zcl.auth.user.vo.UserTokenVo;
import com.zcl.util.general.enums.StatusEnum;
import com.zcl.util.general.response.CommonResponse;
import io.swagger.annotations.ApiOperation;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**

 * @author  zcl

 * @create  2021/12/18 16:06

 * @desc    用户控制层

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
    @RequestMapping(value = "/checkUser.form", method = RequestMethod.POST)
    public Map<String, Object> checkUser(@RequestBody LoginRequest loginRequest) {
        return userBiz.checkUserLogin(loginRequest);
    }
}
