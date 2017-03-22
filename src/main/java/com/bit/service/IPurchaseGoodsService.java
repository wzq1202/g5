package com.bit.service;

import com.bit.model.Purchase;
import com.bit.model.PurchaseGoods;
import com.bit.model.PageBean;
import com.bit.model.PageList;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IPurchaseGoodsService {
    /**
     * 分页查询供货商列表
     * @param pageBean
     * @return
     */
    PageList<PurchaseGoods> getAll(PageBean<PurchaseGoods> pageBean);

    /**
     * 通过ID 查询供货商信息
     * @param purchaseGoodsId
     * @return
     */
    PurchaseGoods get(Integer purchaseGoodsId);

    /**
     * 保存供货商信息
     * @param
     * @return
     */
    boolean save(Purchase purchase);

    /**
     * 删除供货商
     * @param purchaseGoodsId
     * @return
     */
    boolean del(Integer purchaseGoodsId);

}
