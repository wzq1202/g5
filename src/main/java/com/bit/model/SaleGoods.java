package com.bit.model;

import java.math.BigDecimal;

/**
 * Created by qiang on 2017/3/8.
 */
public class SaleGoods {
    private Integer id;
    private Integer saleId;
    private Sale sale;
    private Integer goodsId;
    private Goods goods;
    private Integer amount;
    private BigDecimal outPrice;
    /**
     * 库存预警
     */
    private Integer stockWarnAmount;
    private Integer stockAmount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSaleId() {
        return saleId;
    }

    public void setSaleId(Integer saleId) {
        this.saleId = saleId;
    }

    public Sale getSale() {
        return sale;
    }

    public void setSale(Sale sale) {
        this.sale = sale;
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

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public BigDecimal getOutPrice() {
        return outPrice;
    }

    public void setOutPrice(BigDecimal outPrice) {
        this.outPrice = outPrice;
    }

    public Integer getStockWarnAmount() {
        return stockWarnAmount;
    }

    public void setStockWarnAmount(Integer stockWarnAmount) {
        this.stockWarnAmount = stockWarnAmount;
    }

    public Integer getStockAmount() {
        return stockAmount;
    }

    public void setStockAmount(Integer stockAmount) {
        this.stockAmount = stockAmount;
    }

    @Override
    public String toString() {
        return "SaleGoods{" +
                "id=" + id +
                ", saleId=" + saleId +
                ", sale=" + sale +
                ", goodsId=" + goodsId +
                ", goods=" + goods +
                ", amount=" + amount +
                ", outPrice=" + outPrice +
                ", stockWarnAmount=" + stockWarnAmount +
                ", stockAmount=" + stockAmount +
                '}';
    }
}
