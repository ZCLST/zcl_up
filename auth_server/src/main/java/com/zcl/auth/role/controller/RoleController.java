package com.zcl.auth.role.controller;

import com.zcl.auth.menu.biz.MenuBiz;
import com.zcl.auth.menu.vo.BindMenuTreeVo;
import com.zcl.auth.role.biz.RoleBiz;
import com.zcl.auth.role.request.RoleAddRequest;
import com.zcl.auth.role.request.RolePageRequest;
import com.zcl.auth.role.request.RoleUpdateRequest;
import com.zcl.util.general.annotation.PointLog;
import com.zcl.util.general.response.CommonResponse;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @author zcl
 * @create 2021/12/23 21:44
 * @desc 角色控制层
 **/
@RestController
@RequestMapping("/roleController")
public class RoleController {
    private RoleBiz roleBiz;
    private MenuBiz menuBiz;

    public RoleController(RoleBiz roleBiz, MenuBiz menuBiz) {
        this.roleBiz = roleBiz;
        this.menuBiz = menuBiz;
    }

    /**
     * 查询所有角色
     *
     * @return
     */
    @GetMapping("/selectAllRoles.json")
    public Map<String, Object> selectAllRoles() {
        return roleBiz.selectAllRoles();
    }

    /**
     * 分页动态查询所有角色
     *
     * @param rolePageRequest
     * @return
     */
    @PostMapping("/selectPageRoles.json")
    public Map<String, Object> selectPageRoles(@RequestBody RolePageRequest rolePageRequest) {
        return roleBiz.selectPageRoles(rolePageRequest);
    }

    /**
     * 添加角色
     *
     * @param roleAddRequest
     * @return
     */
    @PostMapping(value = "/addRole.json")
    public Map<String, Object> addRole(@RequestBody RoleAddRequest roleAddRequest, HttpServletRequest httpServletRequest) {
        roleBiz.addRole(roleAddRequest, httpServletRequest);
        return CommonResponse.setResponseData(null);
    }

    /**
     * 根据rid修改角色
     *
     * @param roleUpdateRequest
     * @return
     */
    @PostMapping(value = "/updateRoleById.json")
    public Map<String, Object> updateRoleById(@RequestBody RoleUpdateRequest roleUpdateRequest) {
        roleBiz.updateRoleById(roleUpdateRequest);
        return CommonResponse.setResponseData(null);
    }

    /**
     * 根据id删除角色
     *
     * @param rIds
     * @return
     */
    @PostMapping(value = "/deleteRoleByIds.json")
    public Map<String, Object> deleteRoleByIds(@RequestBody String[] rIds) {
        roleBiz.deleteRoleByIds(rIds);
        return CommonResponse.setResponseData(null);
    }

    /**
     * 根据rid查找角色绑定菜单
     *
     * @param rId
     * @return
     */
    @PostMapping(value = "/queryBindMenuByRid.json")
    public Map queryBindMenuByRid(@RequestBody String rId) {
        List<BindMenuTreeVo> bindMenuTreeVos = menuBiz.getMenuByRid(rId);
        return CommonResponse.setResponseData(bindMenuTreeVos);
    }


    /**
     * 角色菜单绑定保存
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/bindMenus.json", method = RequestMethod.POST)
    public Map bindMenus(@RequestBody String[] mIds) {
        roleBiz.bindMenus(mIds);
        return CommonResponse.setResponseData(null);
    }

}
