package com.cake.web.common.exception;

public abstract class BaseException extends RuntimeException implements IBaseException {

    private static final long serialVersionUID = 1L;

    private String errCode;

    public BaseException(String errMessage) {
        super(errMessage);
    }

    public BaseException(String errCode, String errMessage) {
        super(errMessage);
        this.errCode = errCode;
    }

    public BaseException(IBaseException exception) {
        super(exception.getErrMsg());
        this.errCode = exception.getErrCode();
    }

    public BaseException(String errMessage, Throwable e) {
        super(errMessage, e);
    }

    public BaseException(String errCode, String errMessage, Throwable e) {
        super(errMessage, e);
        this.errCode = errCode;
    }

    public void setErrCode(String errCode) {
        this.errCode = errCode;
    }

    @Override
    public String getErrCode() {
        return errCode;
    }

    @Override
    public String getErrMsg() {
        return getMessage();
    }
}
