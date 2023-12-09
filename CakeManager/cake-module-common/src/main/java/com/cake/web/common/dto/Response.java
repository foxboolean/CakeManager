package com.cake.web.common.dto;

import com.cake.web.common.exception.IBaseException;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class Response implements Serializable {
    private static final long serialVersionUID = 1L;

    private boolean success;

    private String errCode;

    private String errMessage;

    @Override
    public String toString() {
        return "Response [success=" + success + ", errCode=" + errCode + ", errMessage=" + errMessage + "]";
    }

    public static Response buildSuccess() {
        Response response = new Response();
        response.setSuccess(true);
        return response;
    }
    public static Response buildFailure(IBaseException exception) {
        Response response = new Response();
        response.setSuccess(false);
        response.setErrCode(exception.getErrCode());
        response.setErrMessage(exception.getErrMsg());
        return response;
    }

    public static Response buildFailure(String errCode, String errMessage) {
        Response response = new Response();
        response.setSuccess(false);
        response.setErrCode(errCode);
        response.setErrMessage(errMessage);
        return response;
    }
}
