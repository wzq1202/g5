package com.bit.service;

import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Stock;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IStockService {
    PageList<Stock> getAll(PageBean<Stock> pageBean);

    Stock get(Integer stockId);

    boolean save(Stock stock);

    boolean del(Integer stockId);

}
