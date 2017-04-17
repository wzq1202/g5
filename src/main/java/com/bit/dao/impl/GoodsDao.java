package com.bit.dao.impl;

import com.bit.dao.IGoodsDao;
import com.bit.dao.ISupplierDao;
import com.bit.model.Goods;
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
public class GoodsDao implements IGoodsDao{
    @Autowired
    private Dao dao;
    @Override
    public List<Goods> getAll(PageBean<Goods> pageBean) {
        List<Goods> list = dao.getSqlMapClientTpl().queryForList("Goods.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<Goods> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("Goods.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public Goods get(Integer goodsId) {
        return (Goods) dao.getSqlMapClientTpl().queryForObject("Goods.get",goodsId);
    }

    @Override
    public Integer add(Goods goods) {
        return (Integer)dao.getSqlMapClientTpl().insert("Goods.add",goods);
    }

    @Override
    public Integer del(Integer goodsId) {
        return dao.getSqlMapClientTpl().delete("Goods.del",goodsId);
    }

    @Override
    public Integer edit(Goods goods) {
        return dao.getSqlMapClientTpl().update("Goods.edit",goods);
    }

    @Override
    public Goods getSameGoods(Goods goods) {
        return (Goods) dao.getSqlMapClientTpl().queryForObject("Goods.getSameGoods",goods);
    }
}
