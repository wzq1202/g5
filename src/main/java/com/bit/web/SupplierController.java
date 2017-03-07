package com.bit.web;

import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Response;
import com.bit.model.Supplier;
import com.bit.service.ISupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
}
