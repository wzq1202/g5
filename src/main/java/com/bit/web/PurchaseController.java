package com.bit.web;

import com.alibaba.fastjson.JSONArray;
import com.bit.model.*;
import com.bit.service.IPurchaseService;
import org.g4studio.core.annotation.BindType;
import org.g4studio.core.web.BizAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/purchase")
public class PurchaseController extends BizAction{
    @Autowired
    private IPurchaseService purchaseService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/purchase");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<Purchase> getAll(
            @BindType(name = "where",type = Purchase.class) PageBean<Purchase> pageBean){
        return purchaseService.getAll(pageBean);
    }

    @RequestMapping("/get")
    public Response<Purchase> get(Integer purchaseId) {
        Purchase purchase = purchaseService.get(purchaseId);
        return new Response<Purchase>(true,purchase);
    }

    @RequestMapping("/save")
    public Response add(Purchase purchase,String purchaseGoods, HttpServletRequest request) {
        String userId = super.getSessionContainer(request).getUserInfo().getUserid();
        purchase.setUserId(userId);
        if (org.apache.commons.lang.StringUtils.isNotEmpty(purchaseGoods)) {
            List<PurchaseGoods> list = JSONArray.parseArray(purchaseGoods,PurchaseGoods.class);
            purchase.setPurchaseGoodses(list);
        }
        boolean flag = purchaseService.save(purchase);
        return new Response(flag,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer purchaseId) {
        boolean flag = purchaseService.del(purchaseId);
        return new Response(flag,"删除成功","删除失败");
    }

    @RequestMapping("/setStatus")
    public Response setStatus(Integer purchaseId,Integer status) {
        boolean flag = purchaseService.setStatus(purchaseId,status);
        return new Response(flag,"删除成功","删除失败");
    }
}
