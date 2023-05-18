package com.zcl.basic.chars.biz.impl;

import com.zcl.basic.chars.biz.HSBBiz;
import com.zcl.basic.chars.request.ShowMainClassCharsRequest;
import com.zcl.basic.chars.service.HSBService;
import com.zcl.basic.chars.vo.ShowCharsVo;
import com.zcl.util.general.response.CommonResponse;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @authoer:zengcl
 * @createDate:2023/5/18
 * @description:
 */
@Service
public class HSBBizImpl implements HSBBiz {
    private HSBService hsbService;

    public HSBBizImpl(HSBService hsbService) {
        this.hsbService = hsbService;
    }

    @Override
    public Map<String, Object> showMainClassChars(ShowMainClassCharsRequest request) {
        List<ShowCharsVo> vo = hsbService.showMainClassChars(request);
        return CommonResponse.setResponseData(vo);
    }

    @Override
    public Map<String, Object> selectDistinctBaseType() {
        List<String> list = hsbService.selectDistinctBaseType();
        return CommonResponse.setResponseData(list);
    }

    @Override
    public Map<String, Object> selectDistinctVillagesAndTowns() {
        List<String> list = hsbService.selectDistinctVillagesAndTowns();
        return CommonResponse.setResponseData(list);
    }

    @Override
    public Map<String, Object> showScoreLevelChars(ShowMainClassCharsRequest request) {
        List<ShowCharsVo> vo = hsbService.showScoreLevelChars(request);
        return CommonResponse.setResponseData(vo);
    }
}
