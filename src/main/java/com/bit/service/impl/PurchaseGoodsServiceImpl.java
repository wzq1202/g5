package com.bit.service.impl;

import com.bit.dao.IPurchaseGoodsDao;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Purchase;
import com.bit.model.PurchaseGoods;
import com.bit.service.IPurchaseGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class PurchaseGoodsServiceImpl implements IPurchaseGoodsService {
    @Autowired
    private IPurchaseGoodsDao purchaseGoodsDao;
    @Override
    public PageList<PurchaseGoods> getAll(PageBean<PurchaseGoods> pageBean) {
        PageList<PurchaseGoods> pageList = new PageList<>();
        List<PurchaseGoods> list = purchaseGoodsDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(purchaseGoodsDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public PurchaseGoods get(Integer purchaseGoodsId) {
        return purchaseGoodsDao.get(purchaseGoodsId);
    }

    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public boolean save(Purchase purchase) {
        purchaseGoodsDao.delByPurchaseId(purchase.getPurchaseId());
        if (purchase.getPurchaseGoods() != null && !purchase.getPurchaseGoods().isEmpty()) {
            purchaseGoodsDao.addBatch(purchase.getPurchaseGoods());
        }
        return true;
    }

    @Override
    public boolean del(Integer purchaseGoodsId) {
        Integer res = purchaseGoodsDao.del(purchaseGoodsId);
        return res > 0 ? true : false;
    }
}
