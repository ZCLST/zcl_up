package com.zcl.auth.user.biz.impl;

import com.zcl.auth.user.biz.UserBiz;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.LoginRequest;
import com.zcl.auth.user.service.UserService;
import com.zcl.util.general.enums.SysCodeEnum;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.JedisUtil;
import com.zcl.util.general.util.JwtUtil;
import com.zcl.util.general.util.MD5Util;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.Optional;


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

            String md5Pw = MD5Util.EncoderByMd5(password);

            User user = userService.findUserByNameAndPassWord(uName, md5Pw);
            boolean isExist = Optional.ofNullable(user).isPresent();
            if (isExist == false) {
                throw new ZfException("用户名或密码错误");
            }

            String jwt = JwtUtil.createJWT(user.getuId());
            Jedis jedis = JedisUtil.getJedis();
            jedis.set(jwt, user.getuId());
            jedis.set(user.getuId(), user.getuName());
            jedis.expire(jwt, JwtUtil.TTL_MILLIS);
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
    public Map<String, Object> logOut() {

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String token = request.getHeader(SysCodeEnum.HEADER_NAME.getCode());
        Jedis jedis = JedisUtil.getJedis();
        String uId = jedis.get(token);
        jedis.del(token, uId);
        return CommonResponse.setResponseData(null);
    }

}
