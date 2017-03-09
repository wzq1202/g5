package com.bit.model;

/**
 * Created by qiang on 2017/3/9.
 */
public class GoodsAttr {
    private Integer id;
    /**
     * 商品ID
     */
    private Integer goodsId;
    /**
     * 属性ID
     */
    private Integer attrId;

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

    public Integer getAttrId() {
        return attrId;
    }

    public void setAttrId(Integer attrId) {
        this.attrId = attrId;
    }

    @Override
    public String toString() {
        return "GoodsAttr{" +
                "id=" + id +
                ", goodsId=" + goodsId +
                ", attrId=" + attrId +
                '}';
    }
}
