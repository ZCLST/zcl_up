package com.zcl.auth.role.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.auth.role.model.Role;
import com.zcl.auth.role.request.RolePageRequest;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**

 * @author  zcl

 * @create  2021/12/23 21:57

 * @desc    角色通用业务实现层

 **/
@Repository
public interface RoleMapper extends BaseMapper<Role> {
    /**
     * 分页动态查询所有角色
     * @param rolePage
     * @param rolePageRequest
     * @return
     */
    IPage<Role> selectPageRoles(@Param("rolePage") IPage<Role> rolePage,@Param("rolePageRequest") RolePageRequest rolePageRequest);
}
