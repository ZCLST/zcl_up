package com.zcl.auth.menu.biz;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**

 * @author  zcl

 * @create  2021/12/19 9:55

 * @desc    菜单业务层

 **/
public interface MenuBiz {
    /**
     * 根据用户角色获取菜单
     * @param httpServletRequest
     * @return
     */
    Map<String, Object> getMenuByUser(HttpServletRequest httpServletRequest);
}
