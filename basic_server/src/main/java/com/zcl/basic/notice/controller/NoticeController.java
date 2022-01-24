package com.zcl.basic.notice.controller;

import com.sun.org.apache.regexp.internal.RE;
import com.zcl.basic.notice.biz.NoticeBiz;
import com.zcl.basic.notice.request.CheckTheNoticeRequest;
import com.zcl.basic.notice.request.NoticePageRequest;
import com.zcl.basic.notice.request.SendEmailRequest;
import org.springframework.web.bind.annotation.*;
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

    /**
     * 上传附件至OSS
     * @param file
     * @return
     */
    @PostMapping("/uploadFile.json")
    public Map<String, Object> uploadFile(@RequestBody MultipartFile file) {
        return noticeBiz.uploadFile(file);
    }

    /**
     * 查看消息
     * @param checkTheNoticeRequest
     * @return
     */
    @PostMapping("/checkTheNotice.json")
    public Map<String,Object> checkTheNotice(@RequestBody CheckTheNoticeRequest checkTheNoticeRequest){
        return noticeBiz.checkTheNotice(checkTheNoticeRequest);
    }
    /**
     * 全部已读
     * @return
     */
    @PostMapping("/setAllHaveBeenRead.json")
    public Map<String,Object> setAllHaveBeenRead(){
        return noticeBiz.setAllHaveBeenRead();
    }

    /**
     * 删除消息
     * @param nIds
     * @return
     */
    @PostMapping("/deleteNoticeByNoticeIds.json")
    public Map<String,Object> deleteNoticeByNoticeIds(@RequestBody String[] nIds){
        return noticeBiz.deleteNoticeByNoticeIds(nIds);
    }

    /**
     * 获取未读消息
     * @return
     */
    @GetMapping("/getNotReadNotice.json")
    public Map<String,Object> getNotReadNotice(){
        return noticeBiz.getNotReadNoticeNum();
    }
}
