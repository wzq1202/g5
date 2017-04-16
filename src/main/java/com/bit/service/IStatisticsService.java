package com.bit.service;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Statistics;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IStatisticsService {
    PageList<Statistics> getAll(PageBean<Statistics> pageBean);

}
