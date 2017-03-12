package com.bit.dao.impl;

import com.bit.dao.ISupplierDao;
import com.bit.model.PageBean;
import com.bit.model.Supplier;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class SupplierDao implements ISupplierDao{
    @Autowired
    private Dao dao;
    @Override
    public List<Supplier> getAll(PageBean<Supplier> pageBean) {
        List<Supplier> list = dao.getSqlMapClientTpl().queryForList("Supplier.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<Supplier> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("Supplier.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public Supplier get(Integer supplierId) {
        return (Supplier) dao.getSqlMapClientTpl().queryForObject("Supplier.get",supplierId);
    }

    @Override
    public Integer add(Supplier supplier) {
        return (Integer)dao.getSqlMapClientTpl().insert("Supplier.add",supplier);
    }

    @Override
    public Integer del(Integer supplierId) {
        return dao.getSqlMapClientTpl().delete("Supplier.del",supplierId);
    }

    @Override
    public Integer edit(Supplier supplier) {
        return dao.getSqlMapClientTpl().update("Supplier.edit",supplier);
    }

    @Override
    public List<Supplier> getList() {
        return dao.getSqlMapClientTpl().queryForList("Supplier.getList");
    }
}
