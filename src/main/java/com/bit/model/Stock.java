package com.bit.model;

import javax.validation.constraints.Min;

/**
 * Created by qiang on 2017/3/8.
 */
public class Stock {
    private Integer stockId;
    private Integer goodsId;
    private Goods goods;
    @Min(0)
    private Integer amount;
    @Min(0)
    private Integer warnAmount;

    public Integer getStockId() {
        return stockId;
    }

    public void setStockId(Integer stockId) {
        this.stockId = stockId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Integer getWarnAmount() {
        return warnAmount;
    }

    public void setWarnAmount(Integer warnAmount) {
        this.warnAmount = warnAmount;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    @Override
    public String toString() {
        return "Stock{" +
                "stockId=" + stockId +
                ", goodsId=" + goodsId +
                ", goods=" + goods +
                ", amount=" + amount +
                ", warnAmount=" + warnAmount +
                '}';
    }
}
