package com.zcl.auth.user.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.auth.user.mapper.UserMapper;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.UserPageRequest;
import com.zcl.auth.user.service.UserService;
import org.springframework.stereotype.Service;

import java.util.List;


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
