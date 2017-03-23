package com.bit.service.impl;

import com.bit.dao.ISaleDao;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Sale;
import com.bit.service.ISaleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class SaleServiceImpl implements ISaleService {
    @Autowired
    private ISaleDao saleDao;
//    private ISaleGoodsDao saleGoodsDao;
    @Override
    public PageList<Sale> getAll(PageBean<Sale> pageBean) {
        PageList<Sale> pageList = new PageList<>();
        List<Sale> list = saleDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(saleDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public Sale get(Integer saleId) {
        return saleDao.get(saleId);
    }

    @Override
    public boolean save(Sale sale) {
        Integer res = 0;
        if (sale.getSaleId() != null && sale.getSaleId() > 0) {
            res = saleDao.edit(sale);
        } else {
            sale.setCreateTime(new Date());
            res = saleDao.add(sale);
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public boolean del(Integer saleId) {
//        saleGoodsDao.delBySaleId(saleId);
        Integer res = saleDao.del(saleId);
        return res > 0 ? true : false;
    }
}
