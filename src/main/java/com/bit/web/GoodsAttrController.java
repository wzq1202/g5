package com.bit.web;

import com.bit.model.GoodsAttr;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Response;
import com.bit.service.IGoodsAttrService;
import org.g4studio.core.annotation.BindType;
import org.g4studio.core.web.BizAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
            @BindType(type = GoodsAttr.class,name = "where") PageBean<GoodsAttr> pageBean){
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
