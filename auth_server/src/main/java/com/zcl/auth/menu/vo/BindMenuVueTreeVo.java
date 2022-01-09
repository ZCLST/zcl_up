package com.zcl.auth.menu.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author zcl
 * @create 2022/1/2 14:31
 * @desc vue绑定菜单树vo
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BindMenuVueTreeVo {
    /**
     * 菜单id
     */
    private String id;
    /**
     * 父级菜单ID
     */
    private String pId;
    /**
     * 菜单名称
     */
    private String lable;
    /**
     * 子菜单
     */
    private List<BindMenuVueTreeVo> children;
}

