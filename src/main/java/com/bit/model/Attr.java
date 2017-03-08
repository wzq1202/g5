package com.bit.model;

/**
 * Created by qiang on 2017/3/8.
 */
public class Attr {
    private Integer attrId;
    private String attrName;
    private String attrValue;

    public Integer getAttrId() {
        return attrId;
    }

    public void setAttrId(Integer attrId) {
        this.attrId = attrId;
    }

    public String getAttrName() {
        return attrName;
    }

    public void setAttrName(String attrName) {
        this.attrName = attrName;
    }

    public String getAttrValue() {
        return attrValue;
    }

    public void setAttrValue(String attrValue) {
        this.attrValue = attrValue;
    }

    @Override
    public String toString() {
        return "Attr{" +
                "attrId=" + attrId +
                ", attrName='" + attrName + '\'' +
                ", attrValue='" + attrValue + '\'' +
                '}';
    }
}
