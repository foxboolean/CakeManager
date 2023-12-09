package com.cake.web.common.exception;

public enum ErrorCodeEnum implements IBaseException {
    // ----------- 通用异常状态码 -----------
    SYSTEM_ERROR("10000", "系统故障，联系站长恢复"),

    // ----------- 业务异常状态码 -----------
    NO_DATA("20000", "无数据"),
    ;

    @Override
    public String getErrCode() {
        return errCode;
    }

    @Override
    public String getErrMsg() {
        return errMsg;
    }

    private String errCode;
    private String errMsg;

}
