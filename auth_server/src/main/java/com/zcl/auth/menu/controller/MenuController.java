package com.zcl.auth.menu.controller;

import com.zcl.auth.menu.biz.MenuBiz;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**

 * @author  zcl

 * @create  2021/12/19 9:53

 * @desc    菜单控制层

 **/
@RestController
@RequestMapping("/menuController")
public class MenuController {
    private MenuBiz menuBiz;

    public MenuController(MenuBiz menuBiz) {
        this.menuBiz = menuBiz;
    }

    /**
     * 根据用户角色获取菜单
     * @param httpServletRequest
     * @return
     */
    @GetMapping(value = "/getMenuByUser.json")
    public Map<String, Object> getMenuByUser(HttpServletRequest httpServletRequest) {
        return menuBiz.getMenuByUser(httpServletRequest);
    }

}
