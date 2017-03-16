package com.bit.dao;

import com.bit.model.Goods;
import com.bit.model.GoodsAttr;
import com.bit.model.PageBean;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IGoodsAttrDao {
    List<GoodsAttr> getAll(PageBean<GoodsAttr> pageBean);

    Integer getAllCount(PageBean<GoodsAttr> pageBean);

    GoodsAttr get(Integer id);

    Integer add(GoodsAttr goodsAttr);

    Integer addBatch(List<GoodsAttr> goodsAttrs);

    Integer del(Integer id);

    GoodsAttr getByGoodsAndAttr(Integer goodsId,Integer attrId);
}
