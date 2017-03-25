package com.bit.dao;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.Stock;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IStockDao {

    List<Stock> getAll(PageBean<Stock> pageBean);

    Integer getAllCount(PageBean<Stock> pageBean);

    Stock get(Integer stockId);

    Stock getByGoodsId(Integer goodsId);

    Integer add(Stock stock);

    Integer del(Integer stockId);

    Integer delByGoodsId(Integer goodsId);


    Integer edit(Stock stock);

    Integer doStock(Integer goodsId,Integer amount);
}
