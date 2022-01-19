package com.zcl.basic.notice.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.zcl.basic.notice.model.Notice;
import com.zcl.basic.notice.request.NoticePageRequest;
import com.zcl.basic.notice.vo.NoticePageVo;

/**

 * @author  zcl

 * @create  2022/1/19 21:29

 * @desc    站内信通用业务层

 **/
public interface NoticeService {
    /**
     * 分页查找站内信
     * @param noticePage
     * @param noticePageRequest
     * @return
     */
    IPage<NoticePageVo> selectPageNotice(IPage<Notice> noticePage, NoticePageRequest noticePageRequest);
}
