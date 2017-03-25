package com.bit.enu;

/**
 * Created by qiang on 2017/3/25.
 */
public enum StockLogEnum {
    INIT(0,"初始化"),
    SALE(1,"销售"),
    PURCHASE(2,"采购"),
    EDIT(3,"修改");
    private int value;
    private String msg;
    StockLogEnum(int value,String msg){
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
