package com.bit.dao.impl;

import com.bit.dao.IStockLogDao;
import com.bit.model.StockLog;
import com.bit.model.PageBean;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class StockLogDao implements IStockLogDao{
    @Autowired
    private Dao dao;

    @Override
    public List<StockLog> getAll(PageBean<StockLog> pageBean) {
        List<StockLog> list = dao.getSqlMapClientTpl().queryForList("StockLog.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<StockLog> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("StockLog.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public StockLog get(Integer id) {
        return (StockLog) dao.getSqlMapClientTpl().queryForObject("StockLog.get",id);
    }

    @Override
    public Integer add(StockLog stockLog) {
        return (Integer)dao.getSqlMapClientTpl().insert("StockLog.add",stockLog);
    }
}
