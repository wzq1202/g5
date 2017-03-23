package com.bit.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by qiang on 2017/3/8.
 */
public class Sale {
    private Integer saleId;
    private String saleNumber;
    private BigDecimal total;
    private BigDecimal payable;
    private BigDecimal actual;
    private String userId;
    private UserExt userExt;
    private Date createTime;
    private String comment;
    private List<SaleGoods> saleGoodses;

    public Integer getSaleId() {
        return saleId;
    }

    public void setSaleId(Integer saleId) {
        this.saleId = saleId;
    }

    public String getSaleNumber() {
        return saleNumber;
    }

    public void setSaleNumber(String saleNumber) {
        this.saleNumber = saleNumber;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public BigDecimal getPayable() {
        return payable;
    }

    public void setPayable(BigDecimal payable) {
        this.payable = payable;
    }

    public BigDecimal getActual() {
        return actual;
    }

    public void setActual(BigDecimal actual) {
        this.actual = actual;
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public List<SaleGoods> getSaleGoodses() {
        return saleGoodses;
    }

    public void setSaleGoodses(List<SaleGoods> saleGoodses) {
        this.saleGoodses = saleGoodses;
    }

    @Override
    public String toString() {
        return "Sale{" +
                "saleId=" + saleId +
                ", saleNumber='" + saleNumber + '\'' +
                ", total=" + total +
                ", payable=" + payable +
                ", actual=" + actual +
                ", userId='" + userId + '\'' +
                ", userExt=" + userExt +
                ", createTime=" + createTime +
                ", comment='" + comment + '\'' +
                ", saleGoodses=" + saleGoodses +
                '}';
    }
}
