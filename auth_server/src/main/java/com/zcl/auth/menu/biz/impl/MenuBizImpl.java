package com.zcl.auth.menu.biz.impl;

import com.zcl.auth.menu.biz.MenuBiz;
import com.zcl.auth.menu.model.Menu;
import com.zcl.auth.menu.service.MenuService;
import com.zcl.auth.menu.vo.BindMenuTreeVo;
import com.zcl.auth.menu.vo.MenuVo;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.service.UserService;
import com.zcl.util.general.enums.ErrorCodeEnum;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import com.zcl.util.general.util.JedisUtil;
import com.zcl.util.general.util.MapperFactoryUtil;
import lombok.extern.slf4j.Slf4j;
import ma.glasnost.orika.MapperFactory;
import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author zcl
 * @create 2021/12/19 9:56
 * @desc 菜单业务实现层
 **/
@Service
@Slf4j
public class MenuBizImpl implements MenuBiz {
    private MenuService menuService;
    private UserService userService;

    public MenuBizImpl(MenuService menuService, UserService userService) {
        this.menuService = menuService;
        this.userService = userService;
    }

    @Override
    public Map<String, Object> getMenuByUser(HttpServletRequest httpServletRequest) {
        String token = httpServletRequest.getHeader("Authorization");
        if (StringUtils.isEmpty(token)) {
            throw new ZfException(ErrorCodeEnum.TIMEOUT.getDesc());
        }
        Jedis jedis = JedisUtil.getJedis();
        //获取uid
        String uId = jedis.get(token);
        if (StringUtils.isEmpty(uId)) {
            throw new ZfException(ErrorCodeEnum.TIMEOUT.getDesc());
        }
        User user = userService.findUserByUid(uId);
        if (user == null) {
            throw new ZfException("该用户不存在");
        }
        //根据rid查询菜单
        List<Menu> menus = menuService.selectMenusByRid(user.getrId());
        //获取子菜单
        List<MenuVo> menuVos = this.getSubMenus(menus);
        return CommonResponse.setResponseData(menuVos);
    }

    @Override
    public List<BindMenuTreeVo> getMenuByRid(String rId) {
        //查询所有菜单
        List<Menu> menuList = menuService.selectAllMenus();
        //查询该角色菜单
        List<Menu> menuListByRole = menuService.selectMenusByRid(rId);
        List<BindMenuTreeVo> bindMenuTreeVos = new ArrayList<>();
        menuList.stream().forEach(menu -> {
            BindMenuTreeVo bindMenuTreeVo = new BindMenuTreeVo();
            bindMenuTreeVo.setId(menu.getmId());
            bindMenuTreeVo.setpId(menu.getpMenu());
            bindMenuTreeVo.setName(menu.getmName());
            bindMenuTreeVo.setIcon(menu.getmIcon());
            bindMenuTreeVos.add(bindMenuTreeVo);
        });
        //根节点，二级父节点设置展开,该角色菜单进行默认选中
        bindMenuTreeVos.stream().forEach(menuVo -> {
            if ("0".equals(menuVo.getpId()) || "0".equals(menuVo.getId())) {
                menuVo.setOpen(true);
            }
            for (Menu m :
                    menuListByRole) {
                if (m.getmId().equals(menuVo.getId())) {
                    menuVo.setChecked(true);
                    break;
                }
            }
        });
        return bindMenuTreeVos;
    }

    private List<MenuVo> getSubMenus(List<Menu> menus) {
        //获取一级菜单
        List<Menu> menuList = menus.stream().filter(menu -> "0".equals(menu.getpMenu())).collect(Collectors.toList());
        //一级菜单menuVo
        List<MenuVo> menuVos = BeanUtil.convertList(menuList, MenuVo.class);
        if (menuVos.size() > 0) {
            menuVos.stream().forEach(menuVo -> {
                List<MenuVo> list = new ArrayList<>();
                for (Menu m :
                        menus) {
                    if (menuVo.getMId().equals(m.getpMenu())) {
                        MenuVo vo = new MenuVo();
                        vo.setMIcon(m.getmIcon());
                        vo.setMId(m.getmId());
                        vo.setMUrl(m.getmUrl());
                        vo.setMName(m.getmName());
                        list.add(vo);
                    }
                }
                //存完子菜单清空
                menuVo.setSubs(list);
            });
        }
        return menuVos;
    }
}
