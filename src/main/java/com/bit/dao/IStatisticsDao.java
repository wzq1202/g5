package com.bit.dao;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.Statistics;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IStatisticsDao {

    List<Statistics> getAll(PageBean<Statistics> pageBean);

    Integer getAllCount(PageBean<Statistics> pageBean);

}