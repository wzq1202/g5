package com.bit.dao;

import com.bit.model.PageBean;
import com.bit.model.SaleGoods;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface ISaleGoodsDao {

    List<SaleGoods> getAll(PageBean<SaleGoods> pageBean);

    Integer getAllCount(PageBean<SaleGoods> pageBean);

    SaleGoods get(Integer saleGoodsId);

    List<SaleGoods> getBySaleId(Integer saleId);

    Integer add(SaleGoods saleGoods);

    Integer addBatch(List<SaleGoods> saleGoods);

    Integer del(Integer saleGoodsId);

    Integer delBySaleId(Integer saleId);

}
