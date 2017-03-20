package com.bit.service.impl;

import com.bit.dao.IGoodsDao;
import com.bit.dao.IStockDao;
import com.bit.dao.ISupplierDao;
import com.bit.dao.impl.GoodsAttrDao;
import com.bit.model.*;
import com.bit.service.IGoodsService;
import com.bit.service.ISupplierService;
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
public class GoodsServiceImpl implements IGoodsService {
    @Autowired
    private IGoodsDao goodsDao;
    @Autowired
    private IStockDao stockDao;
    @Autowired
    private GoodsAttrDao goodsAttrDao;
    @Override
    public PageList<Goods> getAll(PageBean<Goods> pageBean) {
        PageList<Goods> pageList = new PageList<>();
        List<Goods> list = goodsDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(goodsDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public Goods get(Integer goodsId) {
        return goodsDao.get(goodsId);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    public boolean save(Goods goods) {
        Integer res = 0;
        if (goods.getGoodsId() != null && goods.getGoodsId() > 0) {
            res = goodsDao.edit(goods);
        } else {
            goods.setCreateTime(new Date());
            res = goodsDao.add(goods);
            //添加库存记录
            Stock stock = new Stock();
            stock.setGoodsId(goods.getGoodsId());
            stock.setAmount(0);
            stock.setWarnAmount(0);
            stockDao.add(stock);
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    public boolean del(Integer goodsId) {
        //1.删除商品信息
        Integer res = goodsDao.del(goodsId);
        //2.删除商品属性
        goodsAttrDao.delByGoodsId(goodsId);
        //3.删除商品库存
        stockDao.delByGoodsId(goodsId);
        return res > 0 ? true : false;
    }
}
