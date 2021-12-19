package com.zcl.auth.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zcl.auth.user.model.User;
import org.springframework.stereotype.Repository;

/**
 * @author zcl
 * @create 2021/12/18 17:11
 * @desc 用户持久层
 **/
@Repository
public interface UserMapper extends BaseMapper<User> {
}
