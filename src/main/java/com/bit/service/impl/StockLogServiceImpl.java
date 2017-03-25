package com.bit.service.impl;

import com.bit.dao.IStockLogDao;
import com.bit.model.StockLog;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.service.IStockLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class StockLogServiceImpl implements IStockLogService {
    @Autowired
    private IStockLogDao stockLogDao;
    @Override
    public PageList<StockLog> getAll(PageBean<StockLog> pageBean) {
        PageList<StockLog> pageList = new PageList<>();
        List<StockLog> list = stockLogDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(stockLogDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public StockLog get(Integer stockLogId) {
        return stockLogDao.get(stockLogId);
    }

    @Override
    public boolean save(StockLog stockLog) {
        Integer res = stockLogDao.add(stockLog);
        return (res != null && res > 0) ? true : false;
    }
}
