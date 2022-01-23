package com.zcl.basic.notice.controller;

import com.zcl.basic.notice.biz.NoticeBiz;
import com.zcl.basic.notice.request.NoticePageRequest;
import com.zcl.basic.notice.request.SendEmailRequest;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * @author 曾小白
 * @create 2022/1/19 12:12
 * @desc 站内信控制层
 **/
@RestController
@RequestMapping("/noticeController")
public class NoticeController {

    private NoticeBiz noticeBiz;

    public NoticeController(NoticeBiz noticeBiz) {
        this.noticeBiz = noticeBiz;
    }

    /**
     * 动态分页查询
     *
     * @param noticePageRequest
     * @return
     */
    @PostMapping("/selectPageNotice.json")
    public Map<String, Object> selectPageNotice(@RequestBody NoticePageRequest noticePageRequest) {
        return noticeBiz.selectPageNotice(noticePageRequest);
    }

    /**
     * 发送信件
     *
     * @param sendEmailRequest
     * @return
     */
    @PostMapping("/sendEmail.json")
    public Map<String, Object> sendEmail(@RequestBody SendEmailRequest sendEmailRequest) {
        return noticeBiz.sendEmail(sendEmailRequest);
    }

    @PostMapping("/uploadFile.json")
    public Map<String, Object> uploadFile(@RequestBody MultipartFile file) {
        return noticeBiz.uploadFile(file);
    }
    //todo 全部已读
    //todo 查看信件
    //todo 删除
}
