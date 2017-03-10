package com.bit.dao.impl;

import com.bit.dao.IAttrDao;
import com.bit.dao.ITypeDao;
import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.Type;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class TypeDao implements ITypeDao{
    @Autowired
    private Dao dao;

    @Override
    public List<Type> getAll(PageBean<Type> pageBean) {
        List<Type> list = dao.getSqlMapClientTpl().queryForList("Type.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<Type> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("Type.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public Type get(Integer id) {
        return (Type) dao.getSqlMapClientTpl().queryForObject("Type.get",id);
    }

    @Override
    public Integer add(Type type) {
        return (Integer)dao.getSqlMapClientTpl().insert("Type.add",type);
    }

    @Override
    public Integer del(Integer id) {
        return dao.getSqlMapClientTpl().delete("Type.del",id);
    }

    @Override
    public Integer edit(Type type) {
        return dao.getSqlMapClientTpl().update("Type.edit",type);
    }

    @Override
    public List<Type> getList() {
        return dao.getSqlMapClientTpl().queryForList("Type.getList");
    }
}
