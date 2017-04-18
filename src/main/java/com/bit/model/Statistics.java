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
    private BigDecimal price;
    private String startTime;
    private String endTime;

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


    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
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
                ", price=" + price +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                '}';
    }
}
