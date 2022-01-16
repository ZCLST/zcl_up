package com.zcl.basic.enums;

/**
 * 日志类型枚举类
 */
public enum LogTypeEnum {
    LOGIN("1", "登录"),
    LOGOUT("2", "注销"),
    EMAIL("3", "站内信"),
    PRD_DRAW("4", "商品透视图"),
    INDEX("5", "首页"),
    LOGIN_LOG("6", "登录日志"),
    FUN_LOG("7", "功能日志"),
    ROLE_MAN("8", "角色管理"),
    USER_MAN("9", "用户管理"),
    MENU_MAN("10", "菜单管理"),
    PRD_LIST("11", "商品列表"),
    PRD_SALE("12", "商品销量详情"),
    PRD_PRODUCE("13", "商品产量详情");
    private String code;
    private String desc;

    LogTypeEnum(String code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public String getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }

    //根据code获取enum
    public static LogTypeEnum getDescByCode(String code) {
        for (LogTypeEnum l :
                LogTypeEnum.values()) {
            if (l.getCode().equals(code)) {
                return l;
            }
        }
        return null;
    }
}
