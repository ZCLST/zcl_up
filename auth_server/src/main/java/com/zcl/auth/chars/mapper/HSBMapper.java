package com.zcl.auth.chars.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zcl.auth.chars.model.HSBModel;
import com.zcl.auth.chars.request.ShowMainClassCharsRequest;
import com.zcl.auth.chars.vo.ShowCharsVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface HSBMapper extends BaseMapper<HSBModel> {
    
    List<ShowCharsVo> showMainClassChars(@Param("request") ShowMainClassCharsRequest request);

    
    List<String> selectDistinctBaseType();

    
    List<String> selectDistinctVillagesAndTowns();

    
    List<ShowCharsVo> showScoreLevelChars(@Param("request") ShowMainClassCharsRequest request);
}
