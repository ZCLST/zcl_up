package com.zcl.basic.chars.service.impl;

import com.zcl.basic.chars.mapper.HSBMapper;
import com.zcl.basic.chars.request.ShowMainClassCharsRequest;
import com.zcl.basic.chars.service.HSBService;
import com.zcl.basic.chars.vo.ShowCharsVo;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @authoer:zengcl
 * @createDate:2023/5/18
 * @description:
 */
@Service
public class HSBServiceImpl implements HSBService {
    private HSBMapper hsbMapper;

    public HSBServiceImpl(HSBMapper hsbMapper) {
        this.hsbMapper = hsbMapper;
    }

    @Override
    public List<ShowCharsVo> showMainClassChars(ShowMainClassCharsRequest request) {
        return hsbMapper.showMainClassChars(request);
    }

    @Override
    public List<String> selectDistinctBaseType() {
         return hsbMapper.selectDistinctBaseType();
    }

    @Override
    public List<String> selectDistinctVillagesAndTowns() {
        return hsbMapper.selectDistinctVillagesAndTowns();
    }

    @Override
    public List<ShowCharsVo> showScoreLevelChars(ShowMainClassCharsRequest request) {
        return hsbMapper.showScoreLevelChars(request);
    }
}
