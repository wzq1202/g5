package com.bit.web;

import com.bit.model.StockLog;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Response;
import com.bit.service.IStockLogService;
import org.g4studio.core.annotation.BindType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by qiang on 2017/3/5.
 */
@RestController
@RequestMapping("/stockLog")
public class StockLogController {
    @Autowired
    private IStockLogService stockLogService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/stockLog");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<StockLog> getAll(
            @BindType(name = "where",type = StockLog.class) PageBean<StockLog> pageBean){
        return stockLogService.getAll(pageBean);
    }

    @RequestMapping("/get")
    public Response<StockLog> get(Integer stockLogId) {
        StockLog stockLog = stockLogService.get(stockLogId);
        return new Response<StockLog>(true,stockLog);
    }

    @RequestMapping("/save")
    public Response add(StockLog stockLog) {
        boolean flag = stockLogService.save(stockLog);
        return new Response(flag,"保存成功","保存失败");
    }
}
