package com.zcl.auth.user.biz.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zcl.auth.user.biz.UserBiz;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.LoginRequest;
import com.zcl.auth.user.service.UserService;
import com.zcl.auth.user.vo.UserTokenVo;
import com.zcl.util.general.enums.StatusEnum;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.JedisUtil;
import com.zcl.util.general.util.JwtUtil;
import com.zcl.util.general.util.MD5Util;
import com.zcl.util.general.util.TokenUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import redis.clients.jedis.Jedis;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.Optional;

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
            String uName = loginRequest.getUName();
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
}
