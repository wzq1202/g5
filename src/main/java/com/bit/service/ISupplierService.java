package com.bit.service;

import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Supplier;

/**
 * Created by qiang on 2017/3/5.
 */
public interface ISupplierService {
    PageList<Supplier> getAll(PageBean<Supplier> pageBean);
}
