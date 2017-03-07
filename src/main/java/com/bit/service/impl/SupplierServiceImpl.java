package com.bit.service.impl;

import com.bit.dao.ISupplierDao;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Supplier;
import com.bit.service.ISupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class SupplierServiceImpl implements ISupplierService {
    @Autowired
    private ISupplierDao supplierDao;
    @Override
    public PageList<Supplier> getAll(PageBean<Supplier> pageBean) {
        PageList<Supplier> pageList = new PageList<>();
        List<Supplier> list = supplierDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(supplierDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public Supplier get(Integer supplierId) {
        return supplierDao.get(supplierId);
    }

    @Override
    public boolean save(Supplier supplier) {
        Integer res = 0;
        if (supplier.getSupplierId() != null && supplier.getSupplierId() > 0) {
            res = supplierDao.edit(supplier);
        } else {
            res = supplierDao.add(supplier);
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    public boolean del(Integer supplierId) {
        Integer res = supplierDao.del(supplierId);

        return res > 0 ? true : false;
    }
}
