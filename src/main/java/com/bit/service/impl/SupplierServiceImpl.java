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
        pageList.setROOT(list);
        pageList.setTOTALCOUNT(supplierDao.getAllCount(pageBean));
        return pageList;
    }
}
