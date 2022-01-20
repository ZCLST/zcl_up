package com.zcl.basic.notice.biz.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zcl.basic.notice.biz.NoticeBiz;
import com.zcl.basic.notice.model.Notice;
import com.zcl.basic.notice.request.NoticePageRequest;
import com.zcl.basic.notice.service.NoticeService;
import com.zcl.basic.notice.vo.NoticePageVo;
import com.zcl.util.general.response.CommonResponse;
import com.zcl.util.general.util.ContextUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import java.util.Map;

/**
 * @author 曾小白
 * @create 2022/1/19 12:13
 * @desc 消息核心业务实现层
 **/
@Service
public class NoticeBizImpl implements NoticeBiz {

    private NoticeService noticeService;

    public NoticeBizImpl(NoticeService noticeService) {
        this.noticeService = noticeService;
    }

    @Override
    public Map<String, Object> selectPageNotice(NoticePageRequest noticePageRequest) {
        //获取uid
        String userId = ContextUtils.getUserId();
        Assert.hasLength(userId, "该用户不存在");
        noticePageRequest.setUserId(userId);
        IPage<NoticePageVo> noticePage = new Page<>(noticePageRequest.getPageSize(), noticePageRequest.getPageIndex());
        IPage<NoticePageVo> noticeIPage = noticeService.selectPageNotice(noticePage, noticePageRequest);
        return CommonResponse.setResponseData(noticeIPage);
    }
}
