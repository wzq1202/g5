package com.bit.dao.impl;

import com.bit.dao.IAttrDao;
import com.bit.dao.ISupplierDao;
import com.bit.model.Attr;
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
public class AttrDao implements IAttrDao{
    @Autowired
    private Dao dao;

    @Override
    public List<Attr> getAll(PageBean<Attr> pageBean) {
        List<Attr> list = dao.getSqlMapClientTpl().queryForList("Attr.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<Attr> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("Attr.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public Attr get(Integer id) {
        return (Attr) dao.getSqlMapClientTpl().queryForObject("Attr.get",id);
    }

    @Override
    public Integer add(Attr attr) {
        return (Integer)dao.getSqlMapClientTpl().insert("Attr.add",attr);
    }

    @Override
    public Integer del(Integer id) {
        return dao.getSqlMapClientTpl().delete("Attr.del",id);
    }

    @Override
    public Integer edit(Attr attr) {
        return dao.getSqlMapClientTpl().update("Attr.edit",attr);
    }
}
