package com.bit.web;

import com.bit.model.*;
import com.bit.service.ISupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/supplier")
public class SupplierController {
    @Autowired
    private ISupplierService supplierService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/supplier");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<Supplier> getAll(Supplier supplier,int start,int limit){
        PageBean<Supplier> pageBean = new PageBean<>();
        pageBean.setWhere(supplier);
        pageBean.setStart(start);
        pageBean.setLimit(limit);
        return supplierService.getAll(pageBean);
    }

    @RequestMapping("/get")
    public Response<Supplier> get(Integer supplierId) {
        Supplier supplier = supplierService.get(supplierId);
        return new Response<Supplier>(true,supplier);
    }

    @RequestMapping("/save")
    public Response add(Supplier supplier) {
        boolean flag = supplierService.save(supplier);
        return new Response(flag,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer supplierId) {
        boolean flag = supplierService.del(supplierId);
        return new Response(flag,"删除成功","删除失败");
    }

    @RequestMapping("/getList")
    public String[][] getList() {
        List<Supplier> supplierList = supplierService.getList();
        int size = supplierList != null ? supplierList.size() : 0;
        String[][] res = new String[size][2];
        if (supplierList != null) {
            for (int i = 0 ; i < supplierList.size(); i++ ) {
                Supplier supplier = supplierList.get(i);
                String[] item = new String[2];
                item[0] = supplier.getSupplierId().toString();
                item[1] = supplier.getSupplierName();
                res[i] = item;
            }
        }
        return res;
    }

}
