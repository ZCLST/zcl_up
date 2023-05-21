package com.zcl.auth.user.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.UserPageRequest;

import java.util.List;


public interface UserService {

    
    User findUserByNameAndPassWord(String uName, String password);

    
    User findUserByUid(String uId);


}
