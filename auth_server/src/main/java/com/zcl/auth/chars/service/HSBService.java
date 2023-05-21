package com.zcl.auth.chars.service;

import com.zcl.auth.chars.request.ShowMainClassCharsRequest;
import com.zcl.auth.chars.vo.ShowCharsVo;

import java.util.List;


public interface HSBService {
    
    List<ShowCharsVo> showMainClassChars(ShowMainClassCharsRequest request);

    
    List<String> selectDistinctBaseType();

    
    List<String> selectDistinctVillagesAndTowns();

    
    List<ShowCharsVo> showScoreLevelChars(ShowMainClassCharsRequest request);
}
