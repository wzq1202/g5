package com.bit.dao.impl;

import com.bit.dao.IAttrDao;
import com.bit.dao.IStatisticsDao;
import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.Statistics;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Repository
public class StatisticsDao implements IStatisticsDao{
    @Autowired
    private Dao dao;

    @Override
    public List<Statistics> getPurchase(PageBean<Statistics> pageBean) {
        List<Statistics> list = dao.getSqlMapClientTpl().queryForList("Statistics.getPurchase",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getPurchaseCount(PageBean<Statistics> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("Statistics.getPurchaseCount",pageBean.getWhere());
        return count;
    }

    @Override
    public List<Statistics> getSale(PageBean<Statistics> pageBean) {
        List<Statistics> list = dao.getSqlMapClientTpl().queryForList("Statistics.getSale",pageBean.getWhere(),pageBean.getStart(),pageBean.getLimit());
        return list;
    }

    @Override
    public Integer getSaleCount(PageBean<Statistics> pageBean) {
        Integer count = (Integer)dao.getSqlMapClientTpl().queryForObject("Statistics.getSaleCount",pageBean.getWhere());
        return count;
    }

}
