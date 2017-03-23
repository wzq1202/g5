package com.bit.dao.impl;

import com.bit.dao.IPurchaseGoodsDao;
import com.bit.dao.IPurchaseGoodsDao;
import com.bit.model.PurchaseGoods;
import com.bit.model.PageBean;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class PurchaseGoodsDao implements IPurchaseGoodsDao{
    @Autowired
    private Dao dao;

    @Override
    public List<PurchaseGoods> getAll(PageBean<PurchaseGoods> pageBean) {
        List<PurchaseGoods> list = dao.getSqlMapClientTpl().queryForList("PurchaseGoods.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<PurchaseGoods> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("PurchaseGoods.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public PurchaseGoods get(Integer id) {
        return (PurchaseGoods) dao.getSqlMapClientTpl().queryForObject("PurchaseGoods.get",id);
    }

    @Override
    public Integer add(PurchaseGoods purchaseGoods) {
        return (Integer)dao.getSqlMapClientTpl().insert("PurchaseGoods.add",purchaseGoods);
    }

    @Override
    public Integer del(Integer id) {
        return dao.getSqlMapClientTpl().delete("PurchaseGoods.del",id);
    }

    @Override
    public Integer addBatch(List<PurchaseGoods> purchaseGoods) {
        return (Integer) dao.getSqlMapClientTpl().insert("PurchaseGoods.addBatch",purchaseGoods);
    }

    @Override
    public Integer delByPurchaseId(Integer purchaseId) {
        return dao.getSqlMapClientTpl().delete("PurchaseGoods.delByPurchaseId",purchaseId);
    }
}