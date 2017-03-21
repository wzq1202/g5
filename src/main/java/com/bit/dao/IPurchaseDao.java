package com.bit.dao;

import com.bit.model.Purchase;
import com.bit.model.PageBean;
import com.bit.model.Purchase;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IPurchaseDao {

    List<Purchase> getAll(PageBean<Purchase> pageBean);

    Integer getAllCount(PageBean<Purchase> pageBean);

    Purchase get(Integer purchaseId);

    Integer add(Purchase purchase);

    Integer del(Integer purchaseId);

    Integer edit(Purchase purchase);
}
