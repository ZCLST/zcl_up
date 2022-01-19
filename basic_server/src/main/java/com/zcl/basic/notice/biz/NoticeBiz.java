package com.zcl.basic.notice.biz;

import com.zcl.basic.notice.request.NoticePageRequest;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import java.util.Map;

/**

 * @author  曾小白

 * @create  2022/1/19 12:12

 * @desc    消息核心业务层

 **/
@Validated
public interface NoticeBiz {
    /**
     * 分页查询站内信
     * @param noticePageRequest
     * @return
     */
    Map<String, Object> selectPageNotice(@Valid NoticePageRequest noticePageRequest);
}
