package com.zcl.util.general.enums;


public enum ErrorCodeEnum {

    TIMEOUT("111", "登录超时"),

    SYSERROR("500", "系统异常"),

    NULLERROR("112", "输入不能为空");

    private String code;
    private String desc;

    ErrorCodeEnum(String code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public String getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }
}
