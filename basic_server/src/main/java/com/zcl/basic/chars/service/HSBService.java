package com.zcl.basic.chars.service;

import com.zcl.basic.chars.request.showMainClassCharsRequest;
import com.zcl.basic.chars.vo.ShowCharsVo;

import java.util.List;

/**
 * @authoer:zengcl
 * @createDate:2023/5/18
 * @description:
 */
public interface HSBService {
    /**
     * 展示17版主类数量图
     * @param request
     * @return
     */
    ShowCharsVo showMainClassChars(showMainClassCharsRequest request);

    /**
     * 获取17版基本类型（不重复）
     * @return
     */
    List<String> selectDistinctBaseType();

    /**
     * 获取乡镇（不重复）
     * @return
     */
    List<String> selectDistinctVillagesAndTowns();
}
