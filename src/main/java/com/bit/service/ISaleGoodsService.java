package com.bit.service;

import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Sale;
import com.bit.model.SaleGoods;

/**
 * Created by qiang on 2017/3/5.
 */
public interface ISaleGoodsService {
    PageList<SaleGoods> getAll(PageBean<SaleGoods> pageBean);

    SaleGoods get(Integer saleGoodsId);

    boolean save(Sale sale);

    boolean del(Integer saleGoodsId);

}
