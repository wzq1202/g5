package com.bit.dao.impl;

import com.bit.dao.IPurchaseDao;
import com.bit.model.PageBean;
import com.bit.model.Purchase;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class PurchaseDao implements IPurchaseDao{
    @Autowired
    private Dao dao;

    @Override
    public List<Purchase> getAll(PageBean<Purchase> pageBean) {
        List<Purchase> list = dao.getSqlMapClientTpl().queryForList("Purchase.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<Purchase> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("Purchase.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public Purchase get(Integer id) {
        return (Purchase) dao.getSqlMapClientTpl().queryForObject("Purchase.get",id);
    }

    @Override
    public Integer add(Purchase purchase) {
        return (Integer)dao.getSqlMapClientTpl().insert("Purchase.add",purchase);
    }

    @Override
    public Integer del(Integer id) {
        return dao.getSqlMapClientTpl().delete("Purchase.del",id);
    }

    @Override
    public Integer edit(Purchase purchase) {
        return dao.getSqlMapClientTpl().update("Purchase.edit",purchase);
    }
}
