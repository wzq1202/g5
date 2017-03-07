package com.bit.service;

import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Supplier;

/**
 * Created by qiang on 2017/3/5.
 */
public interface ISupplierService {
    /**
     * 分页查询供货商列表
     * @param pageBean
     * @return
     */
    PageList<Supplier> getAll(PageBean<Supplier> pageBean);

    /**
     * 通过ID 查询供货商信息
     * @param supplierId
     * @return
     */
    Supplier get(Integer supplierId);

    /**
     * 保存供货商信息
     * @param supplier
     * @return
     */
    boolean save(Supplier supplier);

    /**
     * 删除供货商
     * @param supplierId
     * @return
     */
    boolean del(Integer supplierId);

}
