package com.bit.service;

import com.bit.model.Goods;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Supplier;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IGoodsService {
    PageList<Goods> getAll(PageBean<Goods> pageBean);

    Goods get(Integer goodsId);

    boolean save(Goods goods);

    boolean del(Integer goodsId);

}
