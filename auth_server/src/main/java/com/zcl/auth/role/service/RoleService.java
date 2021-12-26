package com.zcl.auth.role.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.auth.role.model.Role;
import com.zcl.auth.role.request.RolePageRequest;

import java.util.List;
import java.util.Map;

/**

 * @author  zcl

 * @create  2021/12/23 21:58

 * @desc    角色通用业务层

 **/
public interface RoleService {
    /**
     * 查询所有角色
     * @return
     */
    List<Role> selectAllRoles();

    /**
     * 分页动态查询所有角色
     * @param rolePage
     * @param rolePageRequest
     * @return
     */
    IPage<Role> selectPageRoles(IPage<Role> rolePage, RolePageRequest rolePageRequest);
}
