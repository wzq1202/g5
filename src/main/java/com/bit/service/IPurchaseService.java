package com.bit.service;

import com.bit.model.Purchase;
import com.bit.model.PageBean;
import com.bit.model.PageList;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IPurchaseService {
    /**
     * 分页查询供货商列表
     * @param pageBean
     * @return
     */
    PageList<Purchase> getAll(PageBean<Purchase> pageBean);

    /**
     * 通过ID 查询供货商信息
     * @param purchaseId
     * @return
     */
    Purchase get(Integer purchaseId);

    /**
     * 保存供货商信息
     * @param purchase
     * @return
     */
    boolean save(Purchase purchase);

    /**
     * 删除供货商
     * @param purchaseId
     * @return
     */
    boolean del(Integer purchaseId);

}
