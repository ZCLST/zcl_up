package com.zcl.basic.chars.controller;

import com.zcl.basic.chars.biz.HSBBiz;
import com.zcl.basic.chars.request.ShowMainClassCharsRequest;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * @authoer:zengcl
 * @createDate:2023/5/18
 * @description:红寺堡控制层
 */
@RestController
@RequestMapping("/hsb")
public class HSBController {
    private HSBBiz hsbBiz;

    public HSBController(HSBBiz hsbBiz) {
        this.hsbBiz = hsbBiz;
    }

    /**
     * 展示17版主类数量图
     * @param request
     * @return
     */
    @PostMapping("/showMainClassChars")
    public Map<String, Object> showMainClassChars(@RequestBody ShowMainClassCharsRequest request) {
        return hsbBiz.showMainClassChars(request);
    }

    /**
     * 获取17版基本类型（不重复）
     * @return
     */
    @GetMapping("/selectDistinctBaseType")
    public Map<String, Object> selectDistinctBaseType() {
        return hsbBiz.selectDistinctBaseType();
    }

    /**
     * 获取乡镇（不重复）
     * @return
     */
    @GetMapping("/selectDistinctVillagesAndTowns")
    public Map<String, Object> selectDistinctVillagesAndTowns() {
        return hsbBiz.selectDistinctVillagesAndTowns();
    }

    /**
     * 展示自评等级图
     * @param request
     * @return
     */
    @PostMapping("/showScoreLevelChars")
    public Map<String, Object> showScoreLevelChars(@RequestBody ShowMainClassCharsRequest request) {
        return hsbBiz.showScoreLevelChars(request);
    }
}
