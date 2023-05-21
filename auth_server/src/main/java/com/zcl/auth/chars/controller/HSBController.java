package com.zcl.auth.chars.controller;

import com.zcl.auth.chars.biz.HSBBiz;
import com.zcl.auth.chars.request.ShowMainClassCharsRequest;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@RestController
@RequestMapping("/hsb")
public class HSBController {
    private HSBBiz hsbBiz;

    public HSBController(HSBBiz hsbBiz) {
        this.hsbBiz = hsbBiz;
    }

    
    @PostMapping("/showMainClassChars")
    public Map<String, Object> showMainClassChars(@RequestBody ShowMainClassCharsRequest request) {
        return hsbBiz.showMainClassChars(request);
    }

    
    @GetMapping("/selectDistinctBaseType")
    public Map<String, Object> selectDistinctBaseType() {
        return hsbBiz.selectDistinctBaseType();
    }

    
    @GetMapping("/selectDistinctVillagesAndTowns")
    public Map<String, Object> selectDistinctVillagesAndTowns() {
        return hsbBiz.selectDistinctVillagesAndTowns();
    }

    
    @PostMapping("/showScoreLevelChars")
    public Map<String, Object> showScoreLevelChars(@RequestBody ShowMainClassCharsRequest request) {
        return hsbBiz.showScoreLevelChars(request);
    }
}
