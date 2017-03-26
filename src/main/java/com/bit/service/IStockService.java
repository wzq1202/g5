package com.bit.service;

import com.bit.enu.StockLogEnum;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Stock;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IStockService {
    PageList<Stock> getAll(PageBean<Stock> pageBean);

    Stock get(Integer stockId);

    boolean save(Stock stock,String userId);

    boolean del(Integer stockId);

    boolean doStock(Integer goodsId, Integer amount, String userId, StockLogEnum stockLogEnum);

    boolean purchase2Stock(Integer purchaseId);

}
