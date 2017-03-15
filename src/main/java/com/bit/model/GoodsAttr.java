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

    private Goods goods;

    private Attr attr;

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

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Attr getAttr() {
        return attr;
    }

    public void setAttr(Attr attr) {
        this.attr = attr;
    }

    @Override
    public String toString() {
        return "GoodsAttr{" +
                "id=" + id +
                ", goodsId=" + goodsId +
                ", attrId=" + attrId +
                ", goods=" + goods +
                ", attr=" + attr +
                '}';
    }
}
