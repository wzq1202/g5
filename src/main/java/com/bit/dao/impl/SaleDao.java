package com.bit.dao.impl;

import com.bit.dao.ISaleDao;
import com.bit.dao.ISaleDao;
import com.bit.model.PageBean;
import com.bit.model.Sale;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class SaleDao implements ISaleDao{
    @Autowired
    private Dao dao;

    @Override
    public List<Sale> getAll(PageBean<Sale> pageBean) {
        List<Sale> list = dao.getSqlMapClientTpl().queryForList("Sale.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<Sale> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("Sale.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public Sale get(Integer id) {
        return (Sale) dao.getSqlMapClientTpl().queryForObject("Sale.get",id);
    }

    @Override
    public Integer add(Sale sale) {
        return (Integer)dao.getSqlMapClientTpl().insert("Sale.add",sale);
    }

    @Override
    public Integer del(Integer id) {
        return dao.getSqlMapClientTpl().delete("Sale.del",id);
    }

    @Override
    public Integer edit(Sale sale) {
        return dao.getSqlMapClientTpl().update("Sale.edit",sale);
    }
}
