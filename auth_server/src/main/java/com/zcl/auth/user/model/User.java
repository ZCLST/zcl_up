package com.zcl.auth.user.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;

/**
 * @author 曾小白
 * @create 2021/7/21 13:47
 * @desc 用户实体类
 **/
@TableName(value = "t_user")
public class User implements Serializable {
    private static final long serialVersionUID = 8145882041586848115L;
    public static final String U_ID = "u_id";
    public static final String U_NAME = "u_name";
    public static final String PASSWORD = "password";
    public static final String R_Id = "r_id";
    public static final String CREATE_TIME = "create_time";
    public static final String UPDATE_TIME = "update_time";
    public static final String SEX = "sex";
    public static final String PHONE = "phone";
    public static final String EMAIL = "email";
    public static final String STATUS = "status";

    @TableId(type = IdType.UUID)
    private String uId;
    /**
     * 用户名称
     */
    private String uName;
    /**
     * 用户密码
     */
    private String password;
    /**
     * 角色ID
     */
    private String rId;
    /**
     * 创建时间
     */
    private String createTime;
    /**
     * 修改时间
     */
    private String updateTime;
    /**
     * 性别
     */
    private String sex;
    /**
     * 手机号
     */
    private String phone;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 0:正常 1:注销
     */
    private String status;

    public User() {
    }

    public User(String uId, String uName, String password, String rId, String createTime, String updateTime, String sex, String phone, String email, String status) {
        this.uId = uId;
        this.uName = uName;
        this.password = password;
        this.rId = rId;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.sex = sex;
        this.phone = phone;
        this.email = email;
        this.status = status;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getrId() {
        return rId;
    }

    public void setrId(String rId) {
        this.rId = rId;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
