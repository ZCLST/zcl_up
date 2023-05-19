package com.zcl.auth.role.controller;

import com.zcl.auth.menu.biz.MenuBiz;
import com.zcl.auth.menu.vo.BindMenuTreeVo;
import com.zcl.auth.role.biz.RoleBiz;
import com.zcl.util.general.response.CommonResponse;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

}
