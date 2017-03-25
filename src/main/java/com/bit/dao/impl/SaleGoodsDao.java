package com.bit.dao.impl;

import com.bit.dao.ISaleGoodsDao;
import com.bit.dao.ISaleGoodsDao;
import com.bit.model.PageBean;
import com.bit.model.SaleGoods;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class SaleGoodsDao implements ISaleGoodsDao{
    @Autowired
    private Dao dao;

    @Override
    public List<SaleGoods> getAll(PageBean<SaleGoods> pageBean) {
        List<SaleGoods> list = dao.getSqlMapClientTpl().queryForList("SaleGoods.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<SaleGoods> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("SaleGoods.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public SaleGoods get(Integer id) {
        return (SaleGoods) dao.getSqlMapClientTpl().queryForObject("SaleGoods.get",id);
    }

    @Override
    public List<SaleGoods> getBySaleId(Integer saleId) {
        return dao.getSqlMapClientTpl().queryForList("SaleGoods.getBySaleId",saleId);
    }

    @Override
    public Integer add(SaleGoods saleGoods) {
        return (Integer)dao.getSqlMapClientTpl().insert("SaleGoods.add",saleGoods);
    }

    @Override
    public Integer del(Integer id) {
        return dao.getSqlMapClientTpl().delete("SaleGoods.del",id);
    }

    @Override
    public Integer addBatch(List<SaleGoods> saleGoods) {
        return (Integer) dao.getSqlMapClientTpl().insert("SaleGoods.addBatch",saleGoods);
    }

    @Override
    public Integer delBySaleId(Integer saleId) {
        return dao.getSqlMapClientTpl().delete("SaleGoods.delBySaleId",saleId);
    }
}
