package com.bit.service.impl;

import com.bit.dao.IGoodsDao;
import com.bit.dao.ISupplierDao;
import com.bit.model.Goods;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Supplier;
import com.bit.service.IGoodsService;
import com.bit.service.ISupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class GoodsServiceImpl implements IGoodsService {
    @Autowired
    private IGoodsDao goodsDao;
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
    public boolean save(Goods goods) {
        Integer res = 0;
        if (goods.getGoodsId() != null && goods.getGoodsId() > 0) {
            res = goodsDao.edit(goods);
        } else {
            goods.setCreateTime(new Date());
            res = goodsDao.add(goods);
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    public boolean del(Integer goodsId) {
        Integer res = goodsDao.del(goodsId);

        return res > 0 ? true : false;
    }
}
