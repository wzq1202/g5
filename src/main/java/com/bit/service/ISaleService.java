package com.bit.service;

import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Sale;

/**
 * Created by qiang on 2017/3/5.
 */
public interface ISaleService {
    PageList<Sale> getAll(PageBean<Sale> pageBean);

    Sale get(Integer saleId);

    boolean save(Sale sale);

    boolean del(Integer saleId,String userId);

}
