package com.zcl.basic.notice.biz.impl;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zcl.basic.email.model.Email;
import com.zcl.basic.email.service.EmailService;
import com.zcl.basic.feign.user.client.UserFeignClient;
import com.zcl.basic.feign.user.dto.UserDto;
import com.zcl.basic.notice.biz.NoticeBiz;
import com.zcl.basic.notice.model.Notice;
import com.zcl.basic.notice.request.NoticePageRequest;
import com.zcl.basic.notice.request.SendEmailRequest;
import com.zcl.basic.notice.service.NoticeService;
import com.zcl.basic.notice.vo.FileVo;
import com.zcl.basic.notice.vo.NoticePageVo;
import com.zcl.util.general.exception.ZfException;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.BeanUtil;
import com.zcl.util.general.util.ContextUtils;
import com.zcl.util.general.util.DateUtils;
import com.zcl.util.general.util.OssUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.*;

/**
 * @author 曾小白
 * @create 2022/1/19 12:13
 * @desc 消息核心业务实现层
 **/
@Service
public class NoticeBizImpl implements NoticeBiz {

    private NoticeService noticeService;
    private UserFeignClient userFeignClient;
    private EmailService emailService;

    public NoticeBizImpl(NoticeService noticeService, UserFeignClient userFeignClient, EmailService emailService) {
        this.noticeService = noticeService;
        this.userFeignClient = userFeignClient;
        this.emailService = emailService;
    }

    @Override
    public Map<String, Object> selectPageNotice(NoticePageRequest noticePageRequest) {
        //获取uid
        String userId = ContextUtils.getUserId();
        Assert.hasLength(userId, "该用户不存在");
        noticePageRequest.setUserId(userId);
        //设置开始时间、结束时间
        if (!CollectionUtils.isEmpty(noticePageRequest.getCreateTime())) {
            noticePageRequest.setBeginDate(DateUtils.getTime(noticePageRequest.getCreateTime().get(0)));
            noticePageRequest.setEndDate(DateUtils.getTime(noticePageRequest.getCreateTime().get(1)));
        }
        IPage<NoticePageVo> noticePage = new Page<>(noticePageRequest.getPageIndex(),noticePageRequest.getPageSize());
        IPage<NoticePageVo> noticeIPage = noticeService.selectPageNotice(noticePage, noticePageRequest);
        return CommonResponse.setResponseData(noticeIPage);
    }

    @Override
    @Transactional
    public Map<String, Object> sendEmail(SendEmailRequest sendEmailRequest) {
        String eId = UUID.randomUUID().toString();
        //保存消息
        this.saveNotice(eId,sendEmailRequest);
        //保存信件
        this.saveEmail(eId,sendEmailRequest);

        return CommonResponse.setResponseData(null);
    }

    @Override
    public Map<String, Object> uploadFile(MultipartFile file) {
        String filePath;
        FileVo fileVo = new FileVo();
        try {
            //获取文件全名
            String originalFilename = file.getOriginalFilename();
            //生成OSS上传全路径
            filePath = OssUtil.getFilePath(originalFilename);
            InputStream inputStream = file.getInputStream();
            OssUtil.upload(filePath,inputStream);
            fileVo.setName(originalFilename);
            fileVo.setUrl(filePath);
        } catch (IOException e) {
            e.printStackTrace();
            throw new ZfException("文件流转换失败");
        }
        return CommonResponse.setResponseData(fileVo);
    }

    private void saveEmail(String eId, SendEmailRequest sendEmailRequest) {
        Email email = new Email();
        String nowTime = DateUtils.getNowTime();
        email.seteId(eId);
        email.setCreateTime(nowTime);
        email.setCreateUser(sendEmailRequest.getUserId());
        email.seteContent(sendEmailRequest.getEmailContent());
        email.seteTopic(sendEmailRequest.getEmailTopic());
        if(!CollectionUtils.isEmpty(sendEmailRequest.getFileVoList())){
            String json = JSONObject.toJSONString(sendEmailRequest.getFileVoList());
            email.setFileJson(json);//设置附件名称、地址
        }
        emailService.saveEmail(email);
    }

    private void saveNotice(String eId,SendEmailRequest sendEmailRequest) {
        Notice notice = new Notice();
        String nowTime = DateUtils.getNowTime();
        String userId = ContextUtils.getUserId();
        Assert.hasLength(userId, "该用户不存在");
        String receiveMan = sendEmailRequest.getReceiveMan();
        sendEmailRequest.setUserId(userId);
        //判断收件人是否存在
        Object o=userFeignClient.findUserByUid(receiveMan);
        Assert.notNull(o,"收件人【"+receiveMan+"】不存在");
        notice.setCreateTime(nowTime);
        notice.seteId(eId);
        notice.setSendMan(userId);
        notice.setReceiveMan(receiveMan);
        notice.setHaveRead("0");
        noticeService.saveNotice(notice);
    }
}
