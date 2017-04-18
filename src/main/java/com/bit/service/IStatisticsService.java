package com.bit.service;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Statistics;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IStatisticsService {
    /**
     * 获取采购统计
     * @param pageBean
     * @return
     */
    PageList<Statistics> getPurchase(PageBean<Statistics> pageBean);

    /**获取销售统计
     * @param pageBean
     * @return
     */
    PageList<Statistics> getSale(PageBean<Statistics> pageBean);

}
