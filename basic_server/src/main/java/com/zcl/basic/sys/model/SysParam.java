package com.zcl.basic.sys.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**

 * @author  zcl

 * @create  2022/2/12 10:27

 * @desc    系统参数实体类

 **/
@TableName(value = "sys_param")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SysParam implements Serializable {
    private static final long serialVersionUID = 1366111475889020494L;
    public static final String ID="id";
    public static final String CODE="code";
    public static final String DESC="desc";
    public static final String VALUE="value";
    /**
     * 主键
     */
    @TableId(type = IdType.UUID)
    private String id;
    /**
     * 参数编码
     */
    private String code;
    /**
     * 参数描述
     */
    private String desc;
    /**
     * 参数值
     */
    private String value;
}
