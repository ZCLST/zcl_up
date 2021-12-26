package com.zcl.auth.role.biz;

import com.zcl.auth.role.request.RolePageRequest;

import java.util.Map;

/**
 * @author zcl
 * @create 2021/12/23 21:55
 * @desc 角色业务层
 **/
public interface RoleBiz {
    /**
     * 查询所有角色
     *
     * @return
     */
    Map<String, Object> selectAllRoles();

    /**
     * 分页动态查询所有角色
     * @param rolePageRequest
     * @return
     */
    Map<String, Object> selectPageRoles(RolePageRequest rolePageRequest);
}
