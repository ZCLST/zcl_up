package com.zcl.auth.chars.request;

/**
 * @authoer:zengcl
 * @createDate:2023/5/18
 * @description:
 */
public class ShowMainClassCharsRequest {
    private String baseType;
    private String villagesAndTowns;

    public String getBaseType() {
        return baseType;
    }

    public void setBaseType(String baseType) {
        this.baseType = baseType;
    }

    public String getVillagesAndTowns() {
        return villagesAndTowns;
    }

    public void setVillagesAndTowns(String villagesAndTowns) {
        this.villagesAndTowns = villagesAndTowns;
    }
}
