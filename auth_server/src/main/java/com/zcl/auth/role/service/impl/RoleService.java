package com.zcl.auth.role.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.auth.role.mapper.RoleMapper;
import com.zcl.auth.role.model.Role;
import com.zcl.auth.role.request.RolePageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zcl
 * @create 2021/12/23 21:59
 * @desc 角色通用业务实现层
 **/
@Service
public class RoleService implements com.zcl.auth.role.service.RoleService {
    private RoleMapper roleMapper;

    public RoleService(RoleMapper roleMapper) {
        this.roleMapper = roleMapper;
    }

    @Override
    public List<Role> selectAllRoles() {
        return roleMapper.selectList(new QueryWrapper<>());
    }

    @Override
    public IPage<Role> selectPageRoles(IPage<Role> rolePage, RolePageRequest rolePageRequest) {
        return roleMapper.selectPageRoles(rolePage,rolePageRequest);
    }
}
