package com.zcl.auth.user.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zcl.auth.user.mapper.UserMapper;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.service.UserService;
import org.springframework.stereotype.Service;

/**
 * @author zcl
 * @create 2021/12/18 16:47
 * @desc 用户通用业务实现层
 **/
@Service
public class UserServiceImpl implements UserService {
    private UserMapper userMapper;

    public UserServiceImpl(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User findUserByNameAndPassWord(String uName, String password) {
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq(User.U_NAME, uName);
        userQueryWrapper.eq(User.PASSWORD, password);
        User user = userMapper.selectOne(userQueryWrapper);
        return user;
    }

    @Override
    public User findUserByUid(String uId) {
        return userMapper.selectById(uId);
    }
}
