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

    Supplier get(Integer supplierId);

    /**
     * 添加供货商
     * @param supplier
     * @return
     */
    Integer add(Supplier supplier);

    /**
     * 删除供货商
     * @param supplierId
     * @return
     */
    Integer del(Integer supplierId);

    /**
     * 编辑供货商
     * @param supplier
     * @return
     */
    Integer edit(Supplier supplier);
}
