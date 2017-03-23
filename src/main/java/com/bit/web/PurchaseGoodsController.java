package com.bit.web;

import com.alibaba.fastjson.JSONArray;
import com.bit.model.*;
import com.bit.service.IPurchaseGoodsService;
import org.g4studio.core.annotation.BindType;
import org.g4studio.core.resource.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/purchaseGoods")
public class PurchaseGoodsController {
    @Autowired
    private IPurchaseGoodsService purchaseGoodsService;

    @RequestMapping("/getAll")
    public PageList<PurchaseGoods> getAll(
            @BindType(name = "where",type = PurchaseGoods.class) PageBean<PurchaseGoods> pageBean){
        return purchaseGoodsService.getAll(pageBean);
    }


    @RequestMapping("/save")
    public Response add(Integer purchaseId,String purchaseGoods) {
        Purchase purchase = new Purchase();
        purchase.setPurchaseId(purchaseId);
        if (org.apache.commons.lang.StringUtils.isNotEmpty(purchaseGoods)) {
            List<PurchaseGoods> list = JSONArray.parseArray(purchaseGoods,PurchaseGoods.class);
            purchase.setPurchaseGoods(list);
        }
        boolean flag = purchaseGoodsService.save(purchase);
        return new Response(flag,"保存成功","保存失败");
    }
}
