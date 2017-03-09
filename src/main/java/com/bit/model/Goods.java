package com.bit.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 商品类
 * Created by qiang on 2017/3/9.
 */
public class Goods {
    /**
     * 商品ID
     */
    private Integer goodsId;
    /**
     * 商品编号
     */
    private String serialNumber;
    /**
     * 条形码
     */
    private String barCode;
    /**
     * 商品名称
     */
    private String goodsName;
    /**
     * 品牌
     */
    private String brand;
    /**
     * 原产地
     */
    private String oriArea;
    /**
     * 进价
     */
    private BigDecimal inPrice;
    /**
     * 售价
     */
    private BigDecimal outPrice;

    private Integer supplierId;
    /**
     * 供应商
     */
    private Supplier supplier;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 类别
     */
    private Integer typeId;

    private Type type;

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getBarCode() {
        return barCode;
    }

    public void setBarCode(String barCode) {
        this.barCode = barCode;
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

    public BigDecimal getInPrice() {
        return inPrice;
    }

    public void setInPrice(BigDecimal inPrice) {
        this.inPrice = inPrice;
    }

    public BigDecimal getOutPrice() {
        return outPrice;
    }

    public void setOutPrice(BigDecimal outPrice) {
        this.outPrice = outPrice;
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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

    @Override
    public String toString() {
        return "Goods{" +
                "goodsId=" + goodsId +
                ", serialNumber='" + serialNumber + '\'' +
                ", barCode='" + barCode + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", brand='" + brand + '\'' +
                ", oriArea='" + oriArea + '\'' +
                ", inPrice=" + inPrice +
                ", outPrice=" + outPrice +
                ", supplierId=" + supplierId +
                ", supplier=" + supplier +
                ", createTime=" + createTime +
                ", typeId=" + typeId +
                ", type=" + type +
                '}';
    }
}
