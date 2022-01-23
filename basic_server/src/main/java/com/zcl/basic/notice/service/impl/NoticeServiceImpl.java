package com.zcl.basic.notice.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.basic.notice.mapper.NoticeMapper;
import com.zcl.basic.notice.model.Notice;
import com.zcl.basic.notice.request.NoticePageRequest;
import com.zcl.basic.notice.service.NoticeService;
import com.zcl.basic.notice.vo.NoticePageVo;
import org.springframework.stereotype.Service;

/**
 * @author zcl
 * @create 2022/1/19 21:30
 * @desc 站内信通用业务实现层
 **/
@Service
public class NoticeServiceImpl implements NoticeService {
    private NoticeMapper noticeMapper;

    public NoticeServiceImpl(NoticeMapper noticeMapper) {
        this.noticeMapper = noticeMapper;
    }

    @Override
    public IPage<NoticePageVo> selectPageNotice(IPage<NoticePageVo> noticePage, NoticePageRequest noticePageRequest) {
        IPage<NoticePageVo> noticePageVoIPage = noticeMapper.selectPageNotice(noticePage, noticePageRequest);
        return noticePageVoIPage;
    }

    @Override
    public void saveNotice(Notice notice) {
        noticeMapper.insert(notice);
    }
}
