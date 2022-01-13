package com.zcl.auth.menu.biz;

import com.netflix.ribbon.proxy.annotation.Http;
import com.zcl.auth.menu.request.MenuRequest;
import com.zcl.auth.menu.vo.BindMenuTreeVo;
import org.springframework.validation.annotation.Validated;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;

/**

 * @author  zcl

 * @create  2021/12/19 9:55

 * @desc    菜单业务层

 **/
@Validated
public interface MenuBiz {
    /**
     * 根据用户角色获取菜单
     * @param httpServletRequest
     * @return
     */
    Map<String, Object> getMenuByUser(HttpServletRequest httpServletRequest);

    /**
     * 根据rid查找角色绑定菜单
     * @param rId
     * @return
     */
    List<BindMenuTreeVo> getMenuByRid(@NotBlank(message = "rId不能为空") String rId);

    /**
     * 菜单管理获取所有菜单
     * @return
     */
    Map<String, Object> selectAllMenus();

    /**
     * 新增菜单
     * @param httpServletRequest
     * @param menuRequest
     * @return
     */
    Map<String, Object> addMenu(HttpServletRequest httpServletRequest,@Valid MenuRequest menuRequest);

    /**
     * 根据ID获取菜单
     * @param id
     * @return
     */
    Map<String, Object> findMenuById(@NotBlank(message = "id不能为空") String id);
}
