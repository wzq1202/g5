package com.bit.web;

import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Statistics;
import com.bit.service.IStatisticsService;
import org.g4studio.core.annotation.BindType;
import org.g4studio.core.web.BizAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 统计
 * Created by qiang on 2017/4/16.
 */
@RestController
@RequestMapping("/statistics")
public class StatisticsController extends BizAction {
    @Autowired
    private IStatisticsService statisticsService;
    @RequestMapping("/staPurchase/init.do")
    public ModelAndView staPurchase() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/staPurchase");
        return mav;
    }

    @RequestMapping("/staSale/init.do")
    public ModelAndView staSale() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/page/staSale");
        return mav;
    }

    @RequestMapping("/getPurchase")
    public PageList<Statistics> getPurchase(@BindType(type = Statistics.class,name = "where") PageBean<Statistics> pageBean){
        PageList<Statistics> pageList = statisticsService.getPurchase(pageBean);
        return pageList;
    }
    @RequestMapping("/getSale")
    public PageList<Statistics> getSale(@BindType(type = Statistics.class,name = "where") PageBean<Statistics> pageBean){
        PageList<Statistics> pageList = statisticsService.getSale(pageBean);
        return pageList;
    }
}
