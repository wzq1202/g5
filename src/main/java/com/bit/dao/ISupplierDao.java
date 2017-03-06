package com.bit.dao;

import com.bit.model.PageBean;
import com.bit.model.Supplier;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface ISupplierDao {
    List<Supplier> getAll(PageBean<Supplier> pageBean);
    Integer getAllCount(PageBean<Supplier> pageBean);
}
