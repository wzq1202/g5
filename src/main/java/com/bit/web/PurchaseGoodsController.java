package com.bit.web;

import com.bit.model.*;
import com.bit.service.IPurchaseGoodsService;
import org.g4studio.core.annotation.BindType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    public Response add(Purchase purchase) {
        boolean flag = purchaseGoodsService.save(purchase);
        return new Response(flag,"保存成功","保存失败");
    }
}
