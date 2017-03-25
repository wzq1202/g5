package com.bit.service;

import com.bit.model.StockLog;
import com.bit.model.PageBean;
import com.bit.model.PageList;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IStockLogService {

    PageList<StockLog> getAll(PageBean<StockLog> pageBean);


    StockLog get(Integer stockLogId);


    boolean save(StockLog stockLog);


}
