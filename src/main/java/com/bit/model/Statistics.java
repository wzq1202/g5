package com.bit.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by qiang on 2017/3/8.
 */
public class Statistics {
    private String goodsName;
    private Integer inAmount;
    private Integer outAmount;
    private BigDecimal inMoney;
    private BigDecimal outMoney;
    private Date startTime;
    private Date endTime;

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Integer getInAmount() {
        return inAmount;
    }

    public void setInAmount(Integer inAmount) {
        this.inAmount = inAmount;
    }

    public Integer getOutAmount() {
        return outAmount;
    }

    public void setOutAmount(Integer outAmount) {
        this.outAmount = outAmount;
    }

    public BigDecimal getInMoney() {
        return inMoney;
    }

    public void setInMoney(BigDecimal inMoney) {
        this.inMoney = inMoney;
    }

    public BigDecimal getOutMoney() {
        return outMoney;
    }

    public void setOutMoney(BigDecimal outMoney) {
        this.outMoney = outMoney;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    @Override
    public String toString() {
        return "Statistics{" +
                "goodsName='" + goodsName + '\'' +
                ", inAmount=" + inAmount +
                ", outAmount=" + outAmount +
                ", inMoney=" + inMoney +
                ", outMoney=" + outMoney +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                '}';
    }
}
