package com.zcl.auth.user.service;

import com.zcl.auth.user.model.User;

/**

 * @author  zcl

 * @create  2021/12/18 16:41

 * @desc    用户通用业务层

 **/
public interface UserService {

    /**
     * 根据用户名、密码查找用户
     * @return
     */
    User findUserByNameAndPassWord(String uName, String password);
}
