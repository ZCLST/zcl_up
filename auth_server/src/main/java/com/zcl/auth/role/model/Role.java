package com.zcl.auth.role.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
/**

 * @author  zcl

 * @create  2021/12/23 21:46

 * @desc    角色实体类

 **/
@Data
@ToString
@TableName(value = "t_role")
public class Role implements Serializable {
    private static final long serialVersionUID = -1388580148376174233L;
    @TableId(type = IdType.UUID)
    private String rId;
    /**
     * 角色名称
     */
    private String rName;
    /**
     * 角色描述
     */
    private String rDesc;
    /**
     * 创建时间
     */
    private String createTime;
    /**
     * 修改时间
     */
    private String updateTime;
    /**
     * 创建人
     */
    private String createUser;


}
