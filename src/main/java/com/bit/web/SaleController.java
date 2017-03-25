package com.bit.web;

import com.alibaba.fastjson.JSONArray;
import com.bit.model.*;
import com.bit.service.ISaleService;
import org.g4studio.core.annotation.BindType;
import org.g4studio.core.web.BizAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/sale")
public class SaleController extends BizAction{
    @Autowired
    private ISaleService saleService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/sale");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<Sale> getAll(
            @BindType(name = "where",type = Sale.class) PageBean<Sale> pageBean){
        return saleService.getAll(pageBean);
    }

    @RequestMapping("/get")
    public Response<Sale> get(Integer saleId) {
        Sale sale = saleService.get(saleId);
        return new Response<Sale>(true,sale);
    }

    @RequestMapping("/save")
    public Response add(Sale sale,String saleGoods, HttpServletRequest request) {
        String userId = super.getSessionContainer(request).getUserInfo().getUserid();
        sale.setUserId(userId);
        if (org.apache.commons.lang.StringUtils.isNotEmpty(saleGoods)) {
            List<SaleGoods> list = JSONArray.parseArray(saleGoods,SaleGoods.class);
            sale.setSaleGoodses(list);
        }
        boolean flag = saleService.save(sale);
        return new Response(flag,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer saleId, HttpServletRequest request) {
        String userId = super.getSessionContainer(request).getUserInfo().getUserid();
        boolean flag = saleService.del(saleId,userId);
        return new Response(flag,"删除成功","删除失败");
    }
}
