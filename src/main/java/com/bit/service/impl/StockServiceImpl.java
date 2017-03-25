package com.bit.service.impl;

import com.bit.dao.IStockDao;
import com.bit.dao.impl.StockLogDao;
import com.bit.enu.StockLogEnum;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Stock;
import com.bit.model.StockLog;
import com.bit.service.IStockService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class StockServiceImpl implements IStockService {
    @Autowired
    private IStockDao stockDao;
    @Autowired
    private StockLogDao stockLogDao;
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
    public boolean save(Stock stock,String userId) {
        Integer res = 0;
        if (stock.getStockId() != null && stock.getStockId() > 0) {
            Stock old_stock = stockDao.get(stock.getStockId());
            res = stockDao.edit(stock);
            //插入变更记录
            Integer chgAmount = Math.subtractExact(stock.getAmount(),old_stock.getAmount());
            if (Math.abs(chgAmount) > 0) {
                StockLog stockLog = new StockLog();
                BeanUtils.copyProperties(old_stock,stockLog);
                stockLog.setCreateTime(new Date());
                stockLog.setUserId(userId);
                stockLog.setChgType(StockLogEnum.EDIT.getValue());
                stockLog.setChgAmount(chgAmount);
                stockLogDao.add(stockLog);
            }
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    public boolean del(Integer attrId) {
        Integer res = stockDao.del(attrId);
        return res > 0 ? true : false;
    }

    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public boolean doStock(Integer goodsId, Integer amount, String userId, StockLogEnum stockLogEnum) {
        //记录库存记录
        Stock stock = stockDao.getByGoodsId(goodsId);
        StockLog stockLog = new StockLog();
        BeanUtils.copyProperties(stock,stockLog);
        stockLog.setCreateTime(new Date());
        stockLog.setUserId(userId);
        stockLog.setChgAmount(amount);
        stockLog.setChgType(stockLogEnum.getValue());
        stockLogDao.add(stockLog);
        //处理库存
        Integer res = stockDao.doStock(goodsId,amount);
        return (res != null && res > 0) ? true : false;
    }
}
