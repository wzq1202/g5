package com.bit.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by qiang on 2017/3/8.
 */
public class Purchase {
    private Integer purchaseId;
    private String purchaseNumber;
    private BigDecimal total;
    private BigDecimal payable;
    private BigDecimal actual;
    private String userId;
    private UserExt userExt;
    private Date createTime;
    private Date finishTime;
    private Integer status;
    private String comment;
    private List<PurchaseGoods> purchaseGoodses;

    public Integer getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Integer purchaseId) {
        this.purchaseId = purchaseId;
    }

    public String getPurchaseNumber() {
        return purchaseNumber;
    }

    public void setPurchaseNumber(String purchaseNumber) {
        this.purchaseNumber = purchaseNumber;
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

    public Date getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(Date finishTime) {
        this.finishTime = finishTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public List<PurchaseGoods> getPurchaseGoodses() {
        return purchaseGoodses;
    }

    public void setPurchaseGoodses(List<PurchaseGoods> purchaseGoodses) {
        this.purchaseGoodses = purchaseGoodses;
    }

    @Override
    public String toString() {
        return "Purchase{" +
                "purchaseId=" + purchaseId +
                ", purchaseNumber='" + purchaseNumber + '\'' +
                ", total=" + total +
                ", payable=" + payable +
                ", actual=" + actual +
                ", userId='" + userId + '\'' +
                ", userExt=" + userExt +
                ", createTime=" + createTime +
                ", finishTime=" + finishTime +
                ", status=" + status +
                ", comment='" + comment + '\'' +
                ", purchaseGoodses=" + purchaseGoodses +
                '}';
    }
}
