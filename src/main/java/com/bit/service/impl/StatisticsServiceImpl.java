package com.bit.service.impl;

import com.bit.dao.IAttrDao;
import com.bit.dao.IStatisticsDao;
import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Statistics;
import com.bit.service.IAttrService;
import com.bit.service.IStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class StatisticsServiceImpl implements IStatisticsService {
    @Autowired
    private IStatisticsDao statisticsDao;
    @Override
    public PageList<Statistics> getAll(PageBean<Statistics> pageBean) {
        PageList<Statistics> pageList = new PageList<>();
        List<Statistics> list = statisticsDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(statisticsDao.getAllCount(pageBean));
        return pageList;
    }

}
