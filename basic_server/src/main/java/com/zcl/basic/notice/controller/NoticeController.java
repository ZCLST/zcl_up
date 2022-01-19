package com.zcl.basic.notice.controller;

import com.zcl.basic.notice.biz.NoticeBiz;
import com.zcl.basic.notice.request.NoticePageRequest;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**

 * @author  曾小白

 * @create  2022/1/19 12:12

 * @desc    站内信控制层

 **/
@RestController
@RequestMapping("/noticeController")
public class NoticeController {

    private NoticeBiz noticeBiz;

    public NoticeController(NoticeBiz noticeBiz) {
        this.noticeBiz = noticeBiz;
    }

    @PostMapping("/selectPageNotice.json")
    public Map<String,Object> selectPageNotice(@RequestBody NoticePageRequest noticePageRequest){
        return noticeBiz.selectPageNotice(noticePageRequest);
    }

}
