package com.zcl.auth.menu.service;

import com.zcl.auth.menu.model.Menu;

import java.util.List;

/**

 * @author  zcl

 * @create  2021/12/19 10:37

 * @desc    菜单公共业务

 **/
public interface MenuService {
    /**
     * 根据rId查找对应权限菜单
     * @param rId
     * @return
     */
    List<Menu> selectMenusByRid(String rId);

    /**
     * 查询所有菜单
     * @return
     */
    List<Menu> selectAllMenus();

    /**
     * 新增菜单
     * @param menu
     */
    void addMenu(Menu menu);

    /**
     * 根据ID获取菜单
     * @param id
     * @return
     */
    Menu findMenuById(String id);
}
