package com.zcl.auth.role.controller;

import com.zcl.auth.role.biz.RoleBiz;
import com.zcl.auth.role.request.RolePageRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**

 * @author  zcl

 * @create  2021/12/23 21:44

 * @desc    角色控制层

 **/
@RestController
@RequestMapping("/roleController")
public class RoleController {
    private RoleBiz roleBiz;

    public RoleController(RoleBiz roleBiz) {
        this.roleBiz = roleBiz;
    }

    /**
     * 查询所有角色
     * @return
     */
    @GetMapping("/selectAllRoles.json")
    public Map<String,Object> selectAllRoles(){
        return roleBiz.selectAllRoles();
    }

    /**
     * 分页动态查询所有角色
     * @param rolePageRequest
     * @return
     */
    public Map<String,Object> selectPageRoles(@RequestBody RolePageRequest rolePageRequest){
        return roleBiz.selectPageRoles(rolePageRequest);
    }

}
