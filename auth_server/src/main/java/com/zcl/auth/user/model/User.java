package com.zcl.auth.user.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.zcl.util.general.entity.BaseEntity;

import java.io.Serializable;


@TableName(value = "t_user")
public class User extends BaseEntity {
    private static final long serialVersionUID = 8145882041586848115L;
    public static final String U_ID = "u_id";
    public static final String U_NAME = "u_name";
    public static final String PASSWORD = "password";
    public static final String R_Id = "r_id";
    public static final String SEX = "sex";
    public static final String PHONE = "phone";
    public static final String EMAIL = "email";
    public static final String STATUS = "status";

    @TableId(type = IdType.UUID)
    private String uId;
    
    private String uName;
    
    private String password;
    
    private String rId;
    
    private String sex;
    
    private String phone;
    
    private String email;
    
    private String status;

    public User() {
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
