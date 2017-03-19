package com.bit.web;

import com.bit.model.*;
import com.bit.service.IGoodsService;
import com.bit.service.ISupplierService;
import org.g4studio.core.annotation.BindType;
import org.g4studio.core.web.BizAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/goods")
public class GoodsController extends BizAction{
    @Autowired
    private IGoodsService goodsService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/goods");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<Goods> getAll(@BindType(type = Goods.class,name = "where") PageBean<Goods> pageBean){
        PageList<Goods> pageList = goodsService.getAll(pageBean);
        return pageList;
    }

    @RequestMapping("/get")
    public Response<Goods> get(Integer goodsId) {
        Goods goods = goodsService.get(goodsId);
        return new Response<Goods>(true,goods);
    }

    @RequestMapping("/save")
    public Response save(Goods goods, HttpServletRequest request) {
        String userId = super.getSessionContainer(request).getUserInfo().getUserid();
        goods.setUserId(userId);
        boolean flag = goodsService.save(goods);
        return new Response(flag,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer goodsId) {
        boolean flag = goodsService.del(goodsId);
        return new Response(flag,"删除成功","删除失败");
    }
}
