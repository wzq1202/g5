package com.bit.enu;

/**
 * Created by qiang on 2017/3/23.
 */
public enum PurchaseEnum {
    REJECT(-1,"驳回"),
    WAIT(0,"等待确认"),
    AGREE(1,"已确认"),
    RECEIVE(2,"准备入库"),
    FINISH(3,"入库完成");
    private int value;
    private String msg;
    PurchaseEnum(int value,String msg){
        this.value = value;
        this.msg = msg;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
