package com.zcl.util.general.response;


import com.zcl.util.general.enums.StatusEnum;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;


@Component
public class CommonResponse {
    public static Map setPageResponse(Object data, Integer recordsTotal, String responseCode, String responseMsg, boolean status) {
        Map<String, Object> responseResult = new HashMap<>();
        responseResult.put("data", data);
        responseResult.put("count", recordsTotal);
        responseResult.put("code", responseCode);
        responseResult.put("msg", responseMsg);
        responseResult.put("status", status);
        return responseResult;
    }

    public static Map setResponseData(Object data, String code, String msg, boolean status) {
        Map<String, Object> responseResult = new HashMap<>();
        responseResult.put("status", status);
        responseResult.put("code", code);
        responseResult.put("msg", msg);
        responseResult.put("data", data);
        return responseResult;
    }


    public static Map setIndexPageResponse(Object data, Integer recordsTotal) {
        return setPageResponse(data, recordsTotal,
                StatusEnum.SUCCESS.getFlag(), "查询成功", true );
    }

    public static Map setResponseData(Object data) {
        return setResponseData(data, StatusEnum.SUCCESS.getFlag(), "操作成功", true);
    }
    public static Map setResponseMsg(String msg) {
        return setResponseData(null,  StatusEnum.SUCCESS.getFlag(), msg, true);
    }
}
