package com.bit.service.impl;

import com.bit.dao.IStockDao;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Stock;
import com.bit.service.IStockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class StockServiceImpl implements IStockService {
    @Autowired
    private IStockDao stockDao;
    @Override
    public PageList<Stock> getAll(PageBean<Stock> pageBean) {
        PageList<Stock> pageList = new PageList<>();
        List<Stock> list = stockDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(stockDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public Stock get(Integer stockId) {
        return stockDao.get(stockId);
    }

    @Override
    public boolean save(Stock stock) {
        Integer res = 0;
        if (stock.getStockId() != null && stock.getStockId() > 0) {
            res = stockDao.edit(stock);
        } else {
            res = stockDao.add(stock);
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    public boolean del(Integer attrId) {
        Integer res = stockDao.del(attrId);

        return res > 0 ? true : false;
    }
}
