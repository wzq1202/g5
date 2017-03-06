package com.bit.service.impl;

import com.bit.BaseTest;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Supplier;
import com.bit.service.ISupplierService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by qiang on 2017/3/6.
 */
public class TestSupplierService extends BaseTest {
    @Autowired
    private ISupplierService supplierService;
    @Test
    public void testGetAll() {
        PageBean<Supplier> pageBean = new PageBean<>();
        pageBean.setStart(new Integer(2));
        pageBean.setLimit(new Integer(1));
        Supplier supplier = new Supplier();
//        supplier.setTel(1380013801L);
        pageBean.setWhere(supplier);
        PageList<Supplier> pageList = supplierService.getAll(pageBean);
        System.out.println(pageList);
    }

}
