package com.bit.web;

import com.bit.model.*;
import com.bit.service.IAttrService;
import com.bit.service.IStockService;
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
@RequestMapping("/stock")
public class StockController extends BizAction{
    @Autowired
    private IStockService stockService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/stock");
        return mav;
    }

    @RequestMapping("/purchase/init.do")
    public ModelAndView purchase_init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/stock_purchase");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<Stock> getAll(
            @BindType(name = "where",type = Stock.class) PageBean<Stock> pageBean){
        return stockService.getAll(pageBean);
    }

    @RequestMapping("/get")
    public Response<Stock> get(Integer stockId) {
        Stock stock = stockService.get(stockId);
        return new Response<Stock>(true,stock);
    }

    @RequestMapping("/save")
    public Response add(Stock stock, HttpServletRequest request) {
        String userId = super.getSessionContainer(request).getUserInfo().getUserid();
        boolean flag = stockService.save(stock,userId);
        return new Response(flag,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer stockId) {
        boolean flag = stockService.del(stockId);
        return new Response(flag,"删除成功","删除失败");
    }

    @RequestMapping("/purchase2Stock")
    public Response purchase2Stock(Integer purchaseId) {
        boolean flag = stockService.purchase2Stock(purchaseId);
        return new Response(flag,"入库成功","入库失败");
    }
}
