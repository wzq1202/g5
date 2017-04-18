package com.bit.dao;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.Statistics;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IStatisticsDao {

    List<Statistics> getPurchase(PageBean<Statistics> pageBean);

    Integer getPurchaseCount(PageBean<Statistics> pageBean);

    List<Statistics> getSale(PageBean<Statistics> pageBean);

    Integer getSaleCount(PageBean<Statistics> pageBean);

}
