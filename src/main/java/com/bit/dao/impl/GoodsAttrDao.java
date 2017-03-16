package com.bit.dao.impl;

import com.bit.dao.IGoodsAttrDao;
import com.bit.model.GoodsAttr;
import com.bit.model.PageBean;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class GoodsAttrDao implements IGoodsAttrDao {
    @Autowired
    private Dao dao;
    @Override
    public List<GoodsAttr> getAll(PageBean<GoodsAttr> pageBean) {
        List<GoodsAttr> list = dao.getSqlMapClientTpl().queryForList("GoodsAttr.getAll",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getAllCount(PageBean<GoodsAttr> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("GoodsAttr.getAllCount",pageBean.getWhere());
        return count;
    }

    @Override
    public GoodsAttr get(Integer id) {
        return (GoodsAttr) dao.getSqlMapClientTpl().queryForObject("GoodsAttr.get",id);
    }

    @Override
    public Integer add(GoodsAttr goodsAttr) {
        return (Integer)dao.getSqlMapClientTpl().insert("GoodsAttr.add",goodsAttr);
    }

    @Override
    public Integer addBatch(List<GoodsAttr> goodsAttrs) {
        return (Integer) dao.getSqlMapClientTpl().insert("GoodsAttr.addBatch",goodsAttrs);
    }

    @Override
    public Integer del(Integer id) {
        return dao.getSqlMapClientTpl().delete("GoodsAttr.del",id);
    }

    @Override
    public GoodsAttr getByGoodsAndAttr(Integer goodsId, Integer attrId) {
        Map<String,Integer> param = new HashMap<>();
        param.put("goodsId",goodsId);
        param.put("attrId",attrId);
        return (GoodsAttr) dao.getSqlMapClientTpl().queryForObject("GoodsAttr.getByGoodsAndAttr",param);
    }
}
