package com.bit.service;

import com.bit.model.Purchase;
import com.bit.model.PageBean;
import com.bit.model.PageList;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IPurchaseService {
    PageList<Purchase> getAll(PageBean<Purchase> pageBean);

    Purchase get(Integer purchaseId);

    boolean save(Purchase purchase);

    boolean del(Integer purchaseId);

    boolean setStatus(Integer purchaseId,Integer status);

    boolean addStock(Integer purchaseId,String userId);

}
