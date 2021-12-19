package com.zcl.auth.user.biz;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.LoginRequest;
import com.zcl.auth.user.vo.UserTokenVo;
import com.zcl.util.general.enums.StatusEnum;
import com.zcl.util.general.response.CommonResponse;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import java.util.Map;

/**
 * @author zcl
 * @create 2021/12/18 16:36
 * @desc 用户业务层
 **/
@Validated
public interface UserBiz {

    /**
     * 校验用户登录
     *
     * @param loginRequest
     * @return
     */
    Map checkUserLogin(@Valid LoginRequest loginRequest);
}