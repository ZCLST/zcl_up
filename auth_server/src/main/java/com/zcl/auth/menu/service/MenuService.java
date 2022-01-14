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

    /**
     * 根据id查找子菜单
     * @param id
     * @return
     */
    List<Menu> selectSubMenusById(String id);

    /**
     * 根据id批量删除菜单
     * @param ids
     */
    void deleteMenuByIds(List<String> ids);

    /**
     * 根据id批量查找菜单
     * @param collect
     * @return
     */
    List<Menu> selectMenuByIds(List<String> collect);
}
