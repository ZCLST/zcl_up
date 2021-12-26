package com.zcl.auth.user.biz.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zcl.auth.user.biz.UserBiz;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.LoginRequest;
import com.zcl.auth.user.request.UserPageRequest;
import com.zcl.auth.user.request.UserRequest;
import com.zcl.auth.user.service.UserService;
import com.zcl.auth.user.vo.UserTokenVo;
import com.zcl.util.general.enums.StatusEnum;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.*;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import redis.clients.jedis.Jedis;

import javax.validation.Valid;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author zcl
 * @create 2021/12/18 16:39
 * @desc 用户业务实现层
 **/
@Service
@Slf4j
public class UserBizImpl implements UserBiz {
    private UserService userService;

    public UserBizImpl(UserService userService) {
        this.userService = userService;
    }

    @Override
    public Map checkUserLogin(LoginRequest loginRequest) {
        try {
            String uName = loginRequest.getuName();
            String password = loginRequest.getPassword();
            //对密码加密
            String md5Pw = MD5Util.EncoderByMd5(password);
            //根据用户名、密码查询该用户是否存在
            User user = userService.findUserByNameAndPassWord(uName, md5Pw);
            boolean isExist = Optional.ofNullable(user).isPresent();
            if (isExist == false) {
                throw new ZfException("用户名或密码错误");
            }
            //用户名密码正确,判断redis里token是否存在，存在则刷新时间，不存在则新建
            String jwt = JwtUtil.createJWT(user.getuId());
            Jedis jedis = JedisUtil.getJedis();
            jedis.set(jwt, user.getuId());
            jedis.set(user.getuId(), user.getuName());
            jedis.expire(jwt, JwtUtil.TTL_MILLIS);//设置token分钟过期时间
            jedis.expire(user.getuId(), JwtUtil.TTL_MILLIS);
            return CommonResponse.setResponseData(jwt);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            log.error(e.getMessage());
            throw new ZfException("用户名或密码不正确");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            log.error(e.getMessage());
            throw new ZfException("用户名或密码不正确");
        }
    }

    @Override
    public Map<String, Object> listUser(UserPageRequest userPageRequest) {
        IPage<User> userPage = new Page<>(userPageRequest.getPageIndex(), userPageRequest.getPageSize());
        IPage<User> userIPage = userService.listUser(userPage, userPageRequest);
        return CommonResponse.setResponseData(userIPage);
    }

    @Override
    public Map<String, Object> addOrUpdateUser(@Valid UserRequest userRequest) {
        //获取当前时间
        String nowTime = DateUtils.getNowTime();
        User convert = BeanUtil.convert(userRequest, User.class);
        //判断用户名是否存在
        List<User> users = userService.listUsers();
        List<User> collect_user = users.stream().filter(u ->
                StringUtils.equals(u.getuName(), convert.getuName())).collect(Collectors.toList());
        User user = userService.findUserByUid(convert.getuId());
        if (user == null) {//新增
            if (collect_user.size() != 0) {
                throw new ZfException(convert.getuName() + ":用户名已经存在");
            }
            convert.setCreateTime(nowTime);
            userService.saveUser(convert);
        } else {//更新
            if (collect_user.size() > 1) {
                throw new ZfException(convert.getuName() + ":用户名已经存在");
            }
            user.setUpdateTime(nowTime);
            user.setrId(convert.getrId());
            user.setEmail(convert.getEmail());
            user.setPhone(convert.getPhone());
            user.setSex(convert.getSex());
            user.setuName(convert.getuName());
            userService.updateUser(user);
        }
        return CommonResponse.setResponseData(null);
    }

    @Override
    public Map<String, Object> deleteBatchUser(List<String> uid_list) {
        if (CollectionUtils.isEmpty(uid_list)) throw new ZfException("用户ID不能为空");
        userService.deleteBatchUser(uid_list);
        return CommonResponse.setResponseData(null);
    }

    @Override
    public Map<String, Object> findUserByUid(String uId) {
        if(StringUtils.isBlank(uId)){
            throw new ZfException("uId不能为空");
        }
        User user=userService.findUserByUid(uId);
        return CommonResponse.setResponseData(user);
    }
}
