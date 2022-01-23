package com.zcl.basic.email.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;

/**
 * @author zcl
 * @create 2022/1/22 14:44
 * @desc 信件实体类
 **/
@TableName(value = "t_email")
public class Email implements Serializable {
    private static final long serialVersionUID = -1388580148346274233L;

    private static final String E_ID="e_id";
    private static final String E_TOPIC="e_topic";
    private static final String FILE_JSON="file_json";
    private static final String E_CONTENT="e_content";
    private static final String CREATE_USER="create_user";
    private static final String CREATE_TIME="create_time";
    /**
     * 主键
     */
    @TableId(type = IdType.UUID)
    private String eId;
    /**
     * 标题
     */
    private String eTopic;
    /**
     * 附件存放下载地址
     */
    private String fileJson;
    /**
     * 内容
     */
    private String eContent;
    /**
     * 创建人
     */
    private String createUser;
    /**
     * 创建时间
     */
    private String createTime;

    public Email() {
    }

    public Email(String eId, String eTopic, String fileJson, String eContent, String createUser, String createTime) {
        this.eId = eId;
        this.eTopic = eTopic;
        this.fileJson = fileJson;
        this.eContent = eContent;
        this.createUser = createUser;
        this.createTime = createTime;
    }

    public String geteId() {
        return eId;
    }

    public void seteId(String eId) {
        this.eId = eId;
    }

    public String geteTopic() {
        return eTopic;
    }

    public void seteTopic(String eTopic) {
        this.eTopic = eTopic;
    }

    public String getFileJson() {
        return fileJson;
    }

    public void setFileJson(String fileJson) {
        this.fileJson = fileJson;
    }

    public String geteContent() {
        return eContent;
    }

    public void seteContent(String eContent) {
        this.eContent = eContent;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
