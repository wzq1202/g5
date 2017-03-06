package com.bit.dao.impl;

import com.bit.BaseTest;
import com.bit.dao.ISupplierDao;
import com.bit.model.PageBean;
import com.bit.model.Supplier;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public class TestSupplierDao extends BaseTest {
    @Resource(name = "supplierDao")
    private ISupplierDao supplierDao;
    @Test
    public void testGetAll() {
        PageBean<Supplier> pageBean = new PageBean<>();
        pageBean.setStart(new Integer(2));
        pageBean.setLimit(new Integer(1));
        Supplier supplier = new Supplier();
//        supplier.setTel(1380013801L);
        pageBean.setWhere(supplier);
        List<Supplier> list = supplierDao.getAll(pageBean);
        System.out.println(list);
    }

}
