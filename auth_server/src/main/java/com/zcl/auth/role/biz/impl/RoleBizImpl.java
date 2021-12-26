package com.zcl.auth.role.biz.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zcl.auth.role.biz.RoleBiz;
import com.zcl.auth.role.mapper.RoleMapper;
import com.zcl.auth.role.model.Role;
import com.zcl.auth.role.request.RolePageRequest;
import com.zcl.auth.role.service.RoleService;
import com.zcl.auth.role.vo.RoleDropDownVo;
import com.zcl.auth.user.model.User;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author zcl
 * @create 2021/12/23 21:56
 * @desc 业务实现层
 **/
@Service
public class RoleBizImpl implements RoleBiz {
    private RoleService roleService;

    public RoleBizImpl(RoleService roleService) {
        this.roleService = roleService;
    }

    @Override
    public Map<String, Object> selectAllRoles() {
        List<Role> roleList = roleService.selectAllRoles();
        List<RoleDropDownVo> roleDropDownVoList = BeanUtil.convertList(roleList, RoleDropDownVo.class);
        return CommonResponse.setResponseData(roleDropDownVoList);
    }

    @Override
    public Map<String, Object> selectPageRoles(RolePageRequest rolePageRequest) {
        IPage<Role> rolePage = new Page<>(rolePageRequest.getPageIndex(), rolePageRequest.getPageSize());
        IPage<Role> result = roleService.selectPageRoles(rolePage, rolePageRequest);
        return CommonResponse.setResponseData(result);
    }
}
