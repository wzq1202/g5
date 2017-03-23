package com.bit.web;

import com.alibaba.fastjson.JSONArray;
import com.bit.model.*;
import com.bit.service.ISaleGoodsService;
import org.g4studio.core.annotation.BindType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/saleGoods")
public class SaleGoodsController {
    @Autowired
    private ISaleGoodsService saleGoodsService;

    @RequestMapping("/getAll")
    public PageList<SaleGoods> getAll(
            @BindType(name = "where",type = SaleGoods.class) PageBean<SaleGoods> pageBean){
        return saleGoodsService.getAll(pageBean);
    }


    @RequestMapping("/save")
    public Response add(Integer saleId,String saleGoods) {
        Sale sale = new Sale();
        sale.setSaleId(saleId);
        if (org.apache.commons.lang.StringUtils.isNotEmpty(saleGoods)) {
            List<SaleGoods> list = JSONArray.parseArray(saleGoods,SaleGoods.class);
            sale.setSaleGoodses(list);
        }
        boolean flag = saleGoodsService.save(sale);
        return new Response(flag,"保存成功","保存失败");
    }
}
