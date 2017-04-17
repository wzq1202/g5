package com.bit.dao;

import com.bit.model.Goods;
import com.bit.model.PageBean;
import com.bit.model.Supplier;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IGoodsDao {

    List<Goods> getAll(PageBean<Goods> pageBean);

    Integer getAllCount(PageBean<Goods> pageBean);

    Goods get(Integer goodsId);

    Integer add(Goods goods);

    Integer del(Integer goodsId);

    Integer edit(Goods goods);

    Goods getSameGoods(Goods goods);
}
