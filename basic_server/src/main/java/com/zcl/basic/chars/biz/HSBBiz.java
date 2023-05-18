package com.zcl.basic.chars.biz;

import com.zcl.basic.chars.request.showMainClassCharsRequest;

import java.util.Map;

/**
 * @authoer:zengcl
 * @createDate:2023/5/18
 * @description:
 */
public interface HSBBiz {
    /**
     * 展示17版主类数量图
     * @param request
     * @return
     */
    Map<String, Object> showMainClassChars(showMainClassCharsRequest request);

    /**
     * 获取17版基本类型（不重复）
     * @return
     */
    Map<String, Object> selectDistinctBaseType();

    /**
     * 获取乡镇（不重复）
     * @return
     */
    Map<String, Object> selectDistinctVillagesAndTowns();
}
