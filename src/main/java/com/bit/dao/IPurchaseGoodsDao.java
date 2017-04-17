package com.bit.dao;

import com.bit.model.PageBean;
import com.bit.model.PurchaseGoods;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IPurchaseGoodsDao {

    List<PurchaseGoods> getAll(PageBean<PurchaseGoods> pageBean);

    Integer getAllCount(PageBean<PurchaseGoods> pageBean);

    PurchaseGoods get(Integer purchaseGoodsId);

    Integer add(PurchaseGoods purchaseGoods);

    Integer addBatch(List<PurchaseGoods> purchaseGoods);

    Integer del(Integer purchaseGoodsId);

    Integer delByPurchaseId(Integer purchaseId);

    List<PurchaseGoods> getByPurchaseId(Integer purchaseId);

    Integer updateGoodsId(Integer id,Integer goodsId);

}
