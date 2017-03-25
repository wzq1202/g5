package com.bit.model;

import java.util.Date;

/**
 * Created by qiang on 2017/3/8.
 */
public class StockLog {
    private Integer id;
    private Integer goodsId;
    private Goods goods;
    private Integer stockId;
    private Stock stock;
    private Integer amount;
    private Date createTime;
    private String userId;
    private UserExt userExt;
    private Integer chgAmount;
    private Integer chgType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Integer getStockId() {
        return stockId;
    }

    public void setStockId(Integer stockId) {
        this.stockId = stockId;
    }

    public Stock getStock() {
        return stock;
    }

    public void setStock(Stock stock) {
        this.stock = stock;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public UserExt getUserExt() {
        return userExt;
    }

    public void setUserExt(UserExt userExt) {
        this.userExt = userExt;
    }

    public Integer getChgAmount() {
        return chgAmount;
    }

    public void setChgAmount(Integer chgAmount) {
        this.chgAmount = chgAmount;
    }

    public Integer getChgType() {
        return chgType;
    }

    public void setChgType(Integer chgType) {
        this.chgType = chgType;
    }

    @Override
    public String toString() {
        return "StockLog{" +
                "id=" + id +
                ", goodsId=" + goodsId +
                ", goods=" + goods +
                ", stockId=" + stockId +
                ", stock=" + stock +
                ", amount=" + amount +
                ", createTime=" + createTime +
                ", userId='" + userId + '\'' +
                ", userExt=" + userExt +
                ", chgAmount=" + chgAmount +
                ", chgType=" + chgType +
                '}';
    }
}
