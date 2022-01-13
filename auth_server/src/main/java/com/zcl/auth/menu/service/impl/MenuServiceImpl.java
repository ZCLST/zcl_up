package com.zcl.auth.menu.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zcl.auth.menu.mapper.MenuMapper;
import com.zcl.auth.menu.model.Menu;
import com.zcl.auth.menu.service.MenuService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zcl
 * @create 2021/12/19 13:49
 * @desc 菜单公共业务实现层
 **/
@Service
public class MenuServiceImpl implements MenuService {
    private MenuMapper menuMapper;

    public MenuServiceImpl(MenuMapper menuMapper) {
        this.menuMapper = menuMapper;
    }

    @Override
    public List<Menu> selectMenusByRid(String rId) {
        return menuMapper.selectMenusByRid(rId);
    }

    @Override
    public List<Menu> selectAllMenus() {
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByAsc(Menu.M_SORT)
                .orderByDesc(Menu.M_NAME);
        return menuMapper.selectList(queryWrapper);
    }

    @Override
    public void addMenu(Menu menu) {
        menuMapper.insert(menu);
    }

    @Override
    public Menu findMenuById(String id) {
        return  menuMapper.selectById(id);
    }

}
