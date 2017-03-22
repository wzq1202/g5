package com.bit.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by qiang on 2017/3/8.
 */
public class PurchaseGoods {
    private Integer id;
    private Integer purchaseId;
    private Purchase purchase;
    private String goodsName;
    private String brand;
    private String oriArea;
    private Integer supplierId;
    private Supplier supplier;
    private Integer typeId;
    private Type type;
    private Integer amount;
    private BigDecimal price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Integer purchaseId) {
        this.purchaseId = purchaseId;
    }

    public Purchase getPurchase() {
        return purchase;
    }

    public void setPurchase(Purchase purchase) {
        this.purchase = purchase;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getOriArea() {
        return oriArea;
    }

    public void setOriArea(String oriArea) {
        this.oriArea = oriArea;
    }

    public Integer getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "PurchaseGoods{" +
                "id=" + id +
                ", purchaseId=" + purchaseId +
                ", purchase=" + purchase +
                ", goodsName='" + goodsName + '\'' +
                ", brand='" + brand + '\'' +
                ", oriArea='" + oriArea + '\'' +
                ", supplierId=" + supplierId +
                ", supplier=" + supplier +
                ", typeId=" + typeId +
                ", type=" + type +
                ", amount=" + amount +
                ", price=" + price +
                '}';
    }
}
