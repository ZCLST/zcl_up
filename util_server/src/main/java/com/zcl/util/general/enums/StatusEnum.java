package com.zcl.util.general.enums;


public enum StatusEnum {
    SUCCESS(true, "0", "成功"),
    FAIL(false, "1", "失败"),
    YES(true,"1","是"),
    NO(true,"0","否");
    private Boolean code;
    private String flag;
    private String desc;


    StatusEnum(Boolean code, String flag, String desc) {
        this.code = code;
        this.flag = flag;
        this.desc = desc;
    }

    public Boolean getCode() {
        return code;
    }

    public String getFlag() {
        return flag;
    }

    public String getDesc() {
        return desc;
    }
}
