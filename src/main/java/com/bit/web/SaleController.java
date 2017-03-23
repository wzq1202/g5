package com.bit.web;

import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Response;
import com.bit.model.Sale;
import com.bit.service.ISaleService;
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
    public Response add(Sale sale, HttpServletRequest request) {
        String userId = super.getSessionContainer(request).getUserInfo().getUserid();
        sale.setUserId(userId);
        boolean flag = saleService.save(sale);
        return new Response(flag,"保存成功","保存失败");
    }

    @RequestMapping("/del")
    public Response del(Integer saleId) {
        boolean flag = saleService.del(saleId);
        return new Response(flag,"删除成功","删除失败");
    }
}
