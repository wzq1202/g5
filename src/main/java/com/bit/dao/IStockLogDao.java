package com.bit.dao;

import com.bit.model.StockLog;
import com.bit.model.PageBean;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IStockLogDao {

    List<StockLog> getAll(PageBean<StockLog> pageBean);

    Integer getAllCount(PageBean<StockLog> pageBean);

    StockLog get(Integer stockLogId);

    Integer add(StockLog stockLog);
}
