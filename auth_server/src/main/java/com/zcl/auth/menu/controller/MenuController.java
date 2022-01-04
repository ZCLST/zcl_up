package com.zcl.auth.menu.controller;

import com.zcl.auth.menu.biz.MenuBiz;
import com.zcl.auth.menu.vo.BindMenuTreeVo;
import com.zcl.auth.menu.vo.MenuVo;
import com.zcl.util.general.response.CommonResponse;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
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
    @RequestMapping(value = "/getMenuByUser.json", method = RequestMethod.GET)
    public Map<String, Object> getMenuByUser(HttpServletRequest httpServletRequest) {
        return menuBiz.getMenuByUser(httpServletRequest);
    }


}
