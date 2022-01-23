package com.zcl.basic.email.service;

import com.zcl.basic.email.model.Email;

/**

 * @author  zcl

 * @create  2022/1/22 15:03

 * @desc    信件通用业务层

 **/
public interface EmailService {
    /**
     * 保存信件
     * @param email
     */
    void saveEmail(Email email);
}
