package com.zcl.auth.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.request.UserPageRequest;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PostMapping;


@Repository
public interface UserMapper extends BaseMapper<User> {

}
