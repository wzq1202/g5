package com.bit.model;

/**
 * Created by qiang on 2017/3/7.
 */
public class Response<T> {
    private boolean success;
    private String msg;
    private T data;

    public Response(boolean success, T data) {
        this.success = success;
        this.data = data;
    }

    public Response(boolean success, String msg) {
        this.success = success;
        this.msg = msg;
    }

    public Response(boolean success, String msg,String errMsg) {
        this.success = success;
        if (success) {
            this.msg = msg;
        } else {
            this.msg = errMsg;
        }
    }


    public boolean getSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "Response{" +
                "success=" + success +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                '}';
    }
}
