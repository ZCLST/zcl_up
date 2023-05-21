package com.zcl.util.general.exception;


import com.zcl.util.general.enums.ErrorCodeEnum;


public class ZfException extends RuntimeException{
    //异常状态码
    private String code;
    //自定义异常信息
    private String msg;
    private boolean status;



    public ZfException(String msg) {
        this.code = ErrorCodeEnum.NULLERROR.getCode();
        this.msg = msg;
    }

    public ZfException(String message, Throwable cause) {
        super(message, cause);
    }

    public ZfException(Throwable cause) {
        super(cause);
    }

    public ZfException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String getMessage() {
        return msg;
    }

}