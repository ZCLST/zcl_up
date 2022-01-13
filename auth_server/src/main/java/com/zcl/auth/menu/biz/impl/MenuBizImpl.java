package com.zcl.auth.menu.biz.impl;

import com.alibaba.druid.sql.visitor.functions.Bin;
import com.netflix.ribbon.proxy.annotation.Http;
import com.zcl.auth.menu.biz.MenuBiz;
import com.zcl.auth.menu.model.Menu;
import com.zcl.auth.menu.request.MenuRequest;
import com.zcl.auth.menu.service.MenuService;
import com.zcl.auth.menu.vo.BindMenuTreeVo;
import com.zcl.auth.menu.vo.BindMenuVueTreeVo;
import com.zcl.auth.menu.vo.MenuVo;
import com.zcl.auth.user.model.User;
import com.zcl.auth.user.service.UserService;
import com.zcl.util.general.enums.ErrorCodeEnum;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import com.zcl.util.general.util.DateUtils;
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
import javax.validation.constraints.NotBlank;
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

    @Override
    public Map<String, Object> selectAllMenus() {
        List<BindMenuVueTreeVo> collect = new ArrayList<>();
        //查询所有菜单
        List<Menu> menuList = menuService.selectAllMenus();
        List<BindMenuVueTreeVo> bindMenuVueTreeVos = new ArrayList<>();
        if (!CollectionUtils.isEmpty(menuList)) {

            menuList.stream().forEach(menu -> {
                BindMenuVueTreeVo bindMenuVueTreeVo = new BindMenuVueTreeVo();
                bindMenuVueTreeVo.setId(menu.getmId());
                bindMenuVueTreeVo.setLabel(menu.getmName());
                bindMenuVueTreeVo.setPId(menu.getpMenu());
                bindMenuVueTreeVo.setIcon(menu.getmIcon());
                bindMenuVueTreeVo.setDesc(menu.getmDesc());
                bindMenuVueTreeVo.setUrl(menu.getmUrl());
                bindMenuVueTreeVos.add(bindMenuVueTreeVo);
            });
            //生成菜单树
            collect = bindMenuVueTreeVos.stream()
                    // 查找根目录
                    .filter(bm -> StringUtils.equals("0", bm.getId()))
                    // 查找子菜单并放到第一级菜单中
                    .map(bm -> {
                        bm.setChildren(getChildren(bm, bindMenuVueTreeVos));
                        return bm;
                    })
                    // 把处理结果收集成一个 List 集合
                    .collect(Collectors.toList());
        }
        return CommonResponse.setResponseData(collect);
    }

    @Override
    public Map<String, Object> addMenu(HttpServletRequest httpServletRequest, MenuRequest menuRequest) {
        Menu menu = BeanUtil.convert(menuRequest, Menu.class);
        String token = httpServletRequest.getHeader("Authorization");
        Jedis jedis = JedisUtil.getJedis();
        String uId = jedis.get(token);
        menu.setCreateTime(DateUtils.getNowTime());
        menu.setCreateUser(uId);
        menuService.addMenu(menu);
        return CommonResponse.setResponseData(null);
    }

    @Override
    public Map<String, Object> findMenuById(@NotBlank(message = "id不能为空") String id) {
        Menu menu=menuService.findMenuById(id);
        if(menu==null){
            throw new ZfException("该菜单不存在");
        }
        return CommonResponse.setResponseData(menu);
    }


    /**
     * 递归获取子菜单
     *
     * @param root 当前菜单
     * @param all  总的数据
     * @return 子菜单
     */
    public List<BindMenuVueTreeVo> getChildren(BindMenuVueTreeVo root, List<BindMenuVueTreeVo> all) {
        List<BindMenuVueTreeVo> children = all.stream()
                // 根据 父菜单 ID 查找当前菜单 ID，以便于找到 当前菜单的子菜单
                .filter(menu -> StringUtils.equals(menu.getPId(),root.getId()))
                // 递归查找子菜单的子菜单
                .map((menu) -> {
                    menu.setChildren(getChildren(menu, all));
                    return menu;
                })
                // 把处理结果收集成一个 List 集合
                .collect(Collectors.toList());
        return children;
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