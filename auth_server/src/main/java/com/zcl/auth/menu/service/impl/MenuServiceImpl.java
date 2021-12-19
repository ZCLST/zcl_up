package com.zcl.auth.menu.service.impl;

import com.zcl.auth.menu.mapper.MenuMapper;
import com.zcl.auth.menu.model.Menu;
import com.zcl.auth.menu.service.MenuService;
import org.springframework.stereotype.Service;

import java.util.List;

/**

 * @author  zcl

 * @create  2021/12/19 13:49

 * @desc    菜单公共业务实现层

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
}
