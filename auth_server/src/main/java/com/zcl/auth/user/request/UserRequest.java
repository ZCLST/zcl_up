package com.zcl.auth.user.request;

import javax.validation.constraints.NotBlank;


public class UserRequest {
    
    private String uId;
    
    @NotBlank(message = "uName不能为空")
    private String uName;
    
    @NotBlank(message = "password不能为空")
    private String password;
    
    @NotBlank(message = "rId不能为空")
    private String rId;
    
    private String sex;
    
    private String phone;
    
    private String email;
    
    private String status;


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
