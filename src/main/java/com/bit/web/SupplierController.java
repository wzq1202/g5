package com.bit.web;

import com.bit.model.PageBean;
import com.bit.model.PageList;
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
    public PageList<Supplier> getAll(PageBean<Supplier> pageBean){
        return supplierService.getAll(pageBean);
    }
}
