package com.bit.web;

import com.bit.model.*;
import com.bit.model.PageBean;
import com.bit.service.IAttrService;
import com.bit.service.ISupplierService;
import org.g4studio.core.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/attr")
public class AttrController {
    @Autowired
    private IAttrService attrService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/attr");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<Attr> getAll(
            @org.g4studio.core.annotation.BindType(name = "where",type = Attr.class) PageBean<Attr> pageBean){
        return attrService.getAll(pageBean);
    }

    /*@RequestMapping("/getAll")
    public PageList<Attr> getAll(Attr attr, int start, int limit){
        PageBean<Attr> pageBean = new PageBean<>();
        pageBean.setWhere(attr);
        pageBean.setStart(start);
        pageBean.setLimit(limit);
        return attrService.getAll(pageBean);
    }*/

    @RequestMapping("/get")
    public Response<Attr> get(Integer attrId) {
        Attr attr = attrService.get(attrId);
        return new Response<Attr>(true,attr);
    }

    @RequestMapping("/save")
    public Response add(Attr attr) {
        boolean flag = attrService.save(attr);
        return new Response(flag,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer attrId) {
        boolean flag = attrService.del(attrId);
        return new Response(flag,"删除成功","删除失败");
    }
}
