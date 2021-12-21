package com.zcl.auth.user.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.UserPageRequest;

import java.util.List;

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

    /**
     * 根据UId查询用户
     * @param uId
     * @return
     */
    User findUserByUid(String uId);

    /**
     *
     * 动态分页查询用户
     * @param userPage
     * @param userPageRequest
     * @return
     */
    IPage<User> listUser(IPage<User> userPage, UserPageRequest userPageRequest);

    /**
     * 新增用户
     * @param user
     */
    void saveUser(User user);

    /**
     * 更新用户
     * @param user
     */
    void updateUser(User user);

    /**
     * 查询所有用户
     * @return
     */
    List<User> listUsers();
}
