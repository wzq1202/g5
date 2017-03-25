package com.bit.service.impl;

import com.bit.dao.ISaleGoodsDao;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Sale;
import com.bit.model.SaleGoods;
import com.bit.service.ISaleGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class SaleGoodsServiceImpl implements ISaleGoodsService {
    @Autowired
    private ISaleGoodsDao saleGoodsDao;
    @Override
    public PageList<SaleGoods> getAll(PageBean<SaleGoods> pageBean) {
        PageList<SaleGoods> pageList = new PageList<>();
        List<SaleGoods> list = saleGoodsDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(saleGoodsDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public SaleGoods get(Integer saleGoodsId) {
        return saleGoodsDao.get(saleGoodsId);
    }

    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public boolean save(Sale sale) {
        //1.变更库存
        //2.记录库存变更记录
        //3.执行操作
        saleGoodsDao.delBySaleId(sale.getSaleId());
        if (sale.getSaleGoodses() != null && !sale.getSaleGoodses().isEmpty()) {
            saleGoodsDao.addBatch(sale.getSaleGoodses());
        }

        return true;
    }

    @Override
    public boolean del(Integer saleGoodsId) {
        Integer res = saleGoodsDao.del(saleGoodsId);
        return res > 0 ? true : false;
    }
}
