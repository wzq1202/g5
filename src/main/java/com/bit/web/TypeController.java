package com.bit.web;

import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Response;
import com.bit.model.Type;
import com.bit.service.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/type")
public class TypeController {
    @Autowired
    private ITypeService typeService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/type");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<Type> getAll(Type type, int start, int limit){
        PageBean<Type> pageBean = new PageBean<>();
        pageBean.setWhere(type);
        pageBean.setStart(start);
        pageBean.setLimit(limit);
        return typeService.getAll(pageBean);
    }

    @RequestMapping("/get")
    public Response<Type> get(Integer typeId) {
        Type type = typeService.get(typeId);
        return new Response<Type>(true,type);
    }

    @RequestMapping("/save")
    public Response add(Type type) {
        boolean flag = typeService.save(type);
        return new Response(flag,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer typeId) {
        boolean flag = typeService.del(typeId);
        return new Response(flag,"删除成功","删除失败");
    }
}
