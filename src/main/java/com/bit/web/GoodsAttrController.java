package com.bit.web;

import com.bit.model.*;
import com.bit.model.PageBean;
import com.bit.service.IGoodsAttrService;
import com.bit.service.IGoodsService;
import org.g4studio.core.annotation.*;
import org.g4studio.core.web.BizAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/goodsAttr")
public class GoodsAttrController extends BizAction{
    @Autowired
    private IGoodsAttrService goodsAttrService;

    @RequestMapping("/getAll")
    public PageList<GoodsAttr> getAll(
            @org.g4studio.core.annotation.PageBean(type = GoodsAttr.class,field = "where")PageBean<GoodsAttr> pageBean){
        PageList<GoodsAttr> pageList = goodsAttrService.getAll(pageBean);
        return pageList;
    }

//    @RequestMapping("/get")
//    public Response<Goods> get(Integer goodsId) {
//        GoodsAttr goodsAttr = goodsAttrService.get(goodsId);
//        return new Response<Goods>(true,goodsAttr);
//    }

    @RequestMapping("/save")
    public Response save(Integer[] attrIds,Integer goodsId, HttpServletRequest request) {
        String userId = super.getSessionContainer(request).getUserInfo().getUserid();
        List<GoodsAttr> goodsAttrs = new ArrayList<>();
        for (Integer str : attrIds) {
            GoodsAttr goodsAttr = new GoodsAttr();
            goodsAttr.setUserId(userId);
            goodsAttr.setGoodsId(goodsId);
            goodsAttr.setAttrId(str);
            goodsAttrs.add(goodsAttr);
        }
        Integer res = goodsAttrService.saveBatch(goodsAttrs);
        return new Response(res > 0 ? true : false,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer goodsAttrId) {
        boolean flag = goodsAttrService.del(goodsAttrId);
        return new Response(flag,"删除成功","删除失败");
    }
}
