package com.bit.web;

import com.bit.model.Goods;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Statistics;
import com.bit.service.IStatisticsService;
import org.g4studio.core.annotation.BindType;
import org.g4studio.core.web.BizAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 统计
 * Created by qiang on 2017/4/16.
 */
public class StatisticsController extends BizAction {
    @Autowired
    private IStatisticsService statisticsService;
    @RequestMapping("/init.do")
    public ModelAndView init() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/view/statistics/statistics");
        return mav;
    }

    @RequestMapping("/getAll")
    public PageList<Statistics> getAll(@BindType(type = Goods.class,name = "where") PageBean<Statistics> pageBean){
        PageList<Statistics> pageList = statisticsService.getAll(pageBean);
        return pageList;
    }
}
