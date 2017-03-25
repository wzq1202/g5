package com.bit.service.impl;

import com.bit.enu.PurchaseEnum;
import com.bit.dao.IPurchaseDao;
import com.bit.dao.IPurchaseGoodsDao;
import com.bit.model.*;
import com.bit.service.IPurchaseService;
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
public class PurchaseServiceImpl implements IPurchaseService {
    @Autowired
    private IPurchaseDao purchaseDao;
    @Autowired
    private IPurchaseGoodsDao purchaseGoodsDao;
    @Override
    public PageList<Purchase> getAll(PageBean<Purchase> pageBean) {
        PageList<Purchase> pageList = new PageList<>();
        List<Purchase> list = purchaseDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(purchaseDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public Purchase get(Integer purchaseId) {
        return purchaseDao.get(purchaseId);
    }

    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public boolean save(Purchase purchase) {
        Integer res = 0;
        Integer purchaseId = purchase.getPurchaseId();
        if (purchase.getPurchaseId() != null && purchase.getPurchaseId() > 0) {
            res = purchaseDao.edit(purchase);
            purchaseGoodsDao.delByPurchaseId(purchase.getPurchaseId());
        } else {
            purchase.setCreateTime(new Date());
            purchase.setStatus(PurchaseEnum.WAIT.getValue());
            //添加商品
            res = purchaseDao.add(purchase);
            purchaseId = res;
        }
        //添加中间表
        if (purchase.getPurchaseGoodses() != null && !purchase.getPurchaseGoodses().isEmpty()) {
            for (PurchaseGoods pg : purchase.getPurchaseGoodses()) {
                pg.setPurchaseId(purchaseId);
            }
            purchaseGoodsDao.addBatch(purchase.getPurchaseGoodses());
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public boolean del(Integer purchaseId) {
        purchaseGoodsDao.delByPurchaseId(purchaseId);
        Integer res = purchaseDao.del(purchaseId);
        return res > 0 ? true : false;
    }


    @Override
    public boolean setStatus(Integer purchaseId, Integer status) {
        Date finishTime = null;
        if (status == PurchaseEnum.FINISH.getValue()) {
            finishTime = new Date();
        }
        Integer res = purchaseDao.setStatus(purchaseId,status,finishTime);
        return res > 0 ? true : false;
    }
}
