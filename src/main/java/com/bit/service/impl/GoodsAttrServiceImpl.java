package com.bit.service.impl;

import com.bit.dao.IGoodsAttrDao;
import com.bit.dao.IGoodsDao;
import com.bit.model.Goods;
import com.bit.model.GoodsAttr;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.service.IGoodsAttrService;
import com.bit.service.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class GoodsAttrServiceImpl implements IGoodsAttrService {
    @Autowired
    private IGoodsAttrDao goodsAttrDao;

    @Override
    public PageList<GoodsAttr> getAll(PageBean<GoodsAttr> pageBean) {
        PageList<GoodsAttr> pageList = new PageList<>();
        List<GoodsAttr> list = goodsAttrDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(goodsAttrDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public GoodsAttr get(Integer id) {
        return goodsAttrDao.get(id);
    }

    @Override
    public Integer add(GoodsAttr goodsAttr) {
        return goodsAttrDao.add(goodsAttr);
    }

    @Override
    public Integer saveBatch(List<GoodsAttr> goodsAttrs) {
        int res = 0;
        if (goodsAttrs != null) {
            for (GoodsAttr goodsAttr : goodsAttrs) {
                //TODO
            }
        }
        return res;
    }

    @Override
    public Integer addBatch(List<GoodsAttr> goodsAttrs) {
        return goodsAttrDao.addBatch(goodsAttrs);
    }

    @Override
    public Integer del(Integer id) {
        return goodsAttrDao.del(id);
    }
}
