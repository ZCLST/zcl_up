package com.zcl.auth.chars.model;

import com.baomidou.mybatisplus.annotation.TableName;
import com.zcl.util.general.entity.BaseEntity;

import java.util.Date;


@TableName(value = "t_hongsibao")
public class HSBModel extends BaseEntity {
    private static final long serialVersionUID = 732904937967162774L;
    public static final String ID="id";
    public static final String NAME="name";
    public static final String MAIN_CLASS="main_class";
    public static final String SUB_CLASS="sub_class";
    public static final String BASE_TYPE="base_type";
    public static final String NEW_STANDARD_MAIN_CLASS="new_standard_main_class";
    public static final String NEW_STANDARD_SUB_CLASS="new_standard_sub_class";
    public static final String NEW_STANDARD_BASE_TYPE="new_standard_base_type";
    public static final String SCENIC_SPOT="scenic_spot";
    public static final String CITY="city";
    public static final String COUNTY="county";
    public static final String VILLAGES_AND_TOWNS="villages_and_towns";
    public static final String ADDRESS="address";
    public static final String XWGS84="xwgs84";
    public static final String YWGS84="ywgs84";
    public static final String SOURCE="source";
    public static final String LEVEL="level";
    public static final String SCORE="score";
    public static final String PRINCIPAL="principal";

    private Integer id;
    
    private String name;
    
    private String mainClass;
    
    private String subClass;
    
    private String baseType;
    
    private String newStandardMainClass;
    
    private String newStandardSubClass;
    
    private String newStandardBaseType;
    
    private String scenicSpot;
    
    private String city;
    
    private String county;
    
    private String villagesAndTowns;
    
    private String address;
    
    private String xwgs84;
    
    private String ywgs84;
    
    private String source;
    
    private String level;
    
    private String score;
    
    private String principal;
    
    private String createUser;
    
    private Date createTime;
    
    private String updateUser;
    
    private Date updateTime;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMainClass() {
        return mainClass;
    }

    public void setMainClass(String mainClass) {
        this.mainClass = mainClass;
    }

    public String getSubClass() {
        return subClass;
    }

    public void setSubClass(String subClass) {
        this.subClass = subClass;
    }

    public String getBaseType() {
        return baseType;
    }

    public void setBaseType(String baseType) {
        this.baseType = baseType;
    }

    public String getNewStandardMainClass() {
        return newStandardMainClass;
    }

    public void setNewStandardMainClass(String newStandardMainClass) {
        this.newStandardMainClass = newStandardMainClass;
    }

    public String getNewStandardSubClass() {
        return newStandardSubClass;
    }

    public void setNewStandardSubClass(String newStandardSubClass) {
        this.newStandardSubClass = newStandardSubClass;
    }

    public String getNewStandardBaseType() {
        return newStandardBaseType;
    }

    public void setNewStandardBaseType(String newStandardBaseType) {
        this.newStandardBaseType = newStandardBaseType;
    }

    public String getScenicSpot() {
        return scenicSpot;
    }

    public void setScenicSpot(String scenicSpot) {
        this.scenicSpot = scenicSpot;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getVillagesAndTowns() {
        return villagesAndTowns;
    }

    public void setVillagesAndTowns(String villagesAndTowns) {
        this.villagesAndTowns = villagesAndTowns;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getXwgs84() {
        return xwgs84;
    }

    public void setXwgs84(String xwgs84) {
        this.xwgs84 = xwgs84;
    }

    public String getYwgs84() {
        return ywgs84;
    }

    public void setYwgs84(String ywgs84) {
        this.ywgs84 = ywgs84;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

}

