package com.zcl.basic.email.service.impl;

import com.zcl.basic.email.mapper.EmailMapper;
import com.zcl.basic.email.model.Email;
import com.zcl.basic.email.service.EmailService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zcl
 * @create 2022/1/22 15:04
 * @desc 信件通用业务层
 **/
@Service
public class EmailServiceImpl implements EmailService {
    private EmailMapper emailMapper;

    public EmailServiceImpl(EmailMapper emailMapper) {
        this.emailMapper = emailMapper;
    }

    @Override
    public void saveEmail(Email email) {
        emailMapper.insert(email);
    }

    @Override
    public void deleteByEmailIds(List<String> emailIds) {
        emailMapper.deleteBatchIds(emailIds);
    }

    @Override
    public Email selectEmailByEmailId(String eId) {
        return emailMapper.selectById(eId);
    }
}
