package com.zcl.auth.chars.service.impl;

import com.zcl.auth.chars.mapper.HSBMapper;
import com.zcl.auth.chars.request.ShowMainClassCharsRequest;
import com.zcl.auth.chars.service.HSBService;
import com.zcl.auth.chars.vo.ShowCharsVo;
import org.springframework.stereotype.Service;

import java.util.List;


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
