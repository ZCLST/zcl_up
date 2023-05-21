package com.zcl.auth.user.biz;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.LoginRequest;
import com.zcl.auth.user.request.UserPageRequest;
import com.zcl.auth.user.request.UserRequest;
import com.zcl.auth.user.vo.UserTokenVo;
import com.zcl.util.general.enums.StatusEnum;
import com.zcl.util.general.response.CommonResponse;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;


@Validated
public interface UserBiz {

    
    Map checkUserLogin(@Valid LoginRequest loginRequest);

    
    Map<String, Object> logOut();


}