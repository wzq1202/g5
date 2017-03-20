package com.bit.dao.impl;

import com.bit.dao.IAttrDao;
import com.bit.dao.IStockDao;
import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.Stock;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class StockDao implements IStockDao{
    @Autowired
    private Dao dao;

    @Override
    public List<Stock> getAll(PageBean<Stock> pageBean) {
        List<Stock> list = dao.getSqlMapClientTpl().queryForList("Stock.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<Stock> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("Stock.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public Stock get(Integer id) {
        return (Stock) dao.getSqlMapClientTpl().queryForObject("Stock.get",id);
    }

    @Override
    public Integer add(Stock stock) {
        return (Integer)dao.getSqlMapClientTpl().insert("Stock.add",stock);
    }

    @Override
    public Integer del(Integer id) {
        return dao.getSqlMapClientTpl().delete("Stock.del",id);
    }
    public Integer delByGoodsId(Integer goodsId) {
        return dao.getSqlMapClientTpl().delete("Stock.delByGoodsId",goodsId);
    }


    @Override
    public Integer edit(Stock stock) {
        return dao.getSqlMapClientTpl().update("Stock.edit",stock);
    }
}
