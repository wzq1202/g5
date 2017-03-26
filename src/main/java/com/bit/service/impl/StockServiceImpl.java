package com.bit.service.impl;

import com.bit.dao.IPurchaseDao;
import com.bit.dao.IPurchaseGoodsDao;
import com.bit.dao.IStockDao;
import com.bit.dao.impl.StockLogDao;
import com.bit.enu.StockLogEnum;
import com.bit.model.*;
import com.bit.service.IStockService;
import org.g4studio.core.resource.util.MD5;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class StockServiceImpl implements IStockService {
    @Autowired
    private IStockDao stockDao;
    @Autowired
    private StockLogDao stockLogDao;
    @Autowired
    private IPurchaseDao purchaseDao;
    @Autowired
    private IPurchaseGoodsDao purchaseGoodsDao;
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

    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    @Override
    public boolean purchase2Stock(Integer purchaseId) {
        List<PurchaseGoods> purchaseGoodses =  purchaseGoodsDao.getByPurchaseId(purchaseId);
//        for () {
//
//        }

        return false;
    }

    private boolean isSameGoods(Goods g1,Goods g2){
        String g1Str = this.goods2md5(g1);
        String g2Str = this.goods2md5(g2);
        boolean flag = false;
        if (g1Str.equals(g2Str)) {
            flag = true;
        }
        return flag;
    }

    private String goods2md5(Goods goods) {
        TreeMap<String,Object> treeMap = new TreeMap();
        treeMap.put("goodsName",goods.getGoodsName());
        treeMap.put("brand",goods.getBrand());
        treeMap.put("ori_area",goods.getOriArea());
        treeMap.put("type_id",goods.getTypeId());
        StringBuffer sb = new StringBuffer("");
        for (Map.Entry<String,Object> entry : treeMap.entrySet()) {
            Object _value = entry.getValue();
            if (_value != null) {
                sb.append(entry.getKey()).append("=").append(_value).append("&");
            }
        }
        sb.substring(0,sb.length() - 1);
        MD5 md5 = new MD5();
        return md5.getMD5ofStr(sb.toString());
    }
}
