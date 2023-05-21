package com.zcl.auth.chars.biz;


import com.zcl.auth.chars.request.ShowMainClassCharsRequest;

import java.util.Map;


public interface HSBBiz {
    
    Map<String, Object> showMainClassChars(ShowMainClassCharsRequest request);

    
    Map<String, Object> selectDistinctBaseType();

    
    Map<String, Object> selectDistinctVillagesAndTowns();

    
    Map<String, Object> showScoreLevelChars(ShowMainClassCharsRequest request);
}
