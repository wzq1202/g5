package com.bit.service;

import com.bit.model.Goods;
import com.bit.model.GoodsAttr;
import com.bit.model.PageBean;
import com.bit.model.PageList;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IGoodsAttrService {
    PageList<GoodsAttr> getAll(PageBean<GoodsAttr> pageBean);

    GoodsAttr get(Integer id);

    Integer add(GoodsAttr goodsAttr);

    Integer saveBatch(List<GoodsAttr> goodsAttrs);

    Integer addBatch(List<GoodsAttr> goodsAttrs);

    boolean del(Integer id);

    GoodsAttr getByGoodsAndAttr(Integer goodsId,Integer attrId);

}
