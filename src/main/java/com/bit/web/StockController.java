package com.bit.web;

import com.bit.model.*;
import com.bit.service.IAttrService;
import com.bit.service.IStockService;
import org.g4studio.core.annotation.BindType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/stock")
public class StockController {
    @Autowired
    private IStockService stockService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/stock");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<Stock> getAll(
            @BindType(name = "where",type = Stock.class) PageBean<Stock> pageBean){
        return stockService.getAll(pageBean);
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
    public Response<Stock> get(Integer stockId) {
        Stock stock = stockService.get(stockId);
        return new Response<Stock>(true,stock);
    }

    @RequestMapping("/save")
    public Response add(Stock stock) {
        boolean flag = stockService.save(stock);
        return new Response(flag,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer stockId) {
        boolean flag = stockService.del(stockId);
        return new Response(flag,"删除成功","删除失败");
    }
}