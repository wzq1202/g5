package com.bit.dao;

import com.bit.model.PageBean;
import com.bit.model.Sale;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface ISaleDao {

    List<Sale> getAll(PageBean<Sale> pageBean);

    Integer getAllCount(PageBean<Sale> pageBean);

    Sale get(Integer saleId);

    Integer add(Sale sale);

    Integer del(Integer saleId);

    Integer edit(Sale sale);
}
