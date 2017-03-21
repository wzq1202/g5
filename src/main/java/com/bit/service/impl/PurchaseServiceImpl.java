package com.bit.service.impl;

import com.bit.dao.IPurchaseDao;
import com.bit.model.Purchase;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.service.IPurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class PurchaseServiceImpl implements IPurchaseService {
    @Autowired
    private IPurchaseDao purchaseDao;
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
    public boolean save(Purchase purchase) {
        Integer res = 0;
        if (purchase.getPurchaseId() != null && purchase.getPurchaseId() > 0) {
            res = purchaseDao.edit(purchase);
        } else {
            purchase.setCreateTime(new Date());
            purchase.setStatus(0);
            res = purchaseDao.add(purchase);
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    public boolean del(Integer purchaseId) {
        Integer res = purchaseDao.del(purchaseId);

        return res > 0 ? true : false;
    }
}
