package com.zcl.auth.chars.service;

import com.zcl.auth.chars.request.ShowMainClassCharsRequest;
import com.zcl.auth.chars.vo.ShowCharsVo;

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
    List<ShowCharsVo> showMainClassChars(ShowMainClassCharsRequest request);

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

    /**
     * 展示自评等级图
     * @param request
     * @return
     */
    List<ShowCharsVo> showScoreLevelChars(ShowMainClassCharsRequest request);
}
