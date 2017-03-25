package com.bit.service.impl;

import com.bit.dao.ISaleDao;
import com.bit.dao.ISaleGoodsDao;
import com.bit.dao.IStockDao;
import com.bit.enu.StockLogEnum;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Sale;
import com.bit.model.SaleGoods;
import com.bit.service.ISaleService;
import com.bit.service.IStockService;
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
    @Autowired
    private ISaleGoodsDao saleGoodsDao;
    @Autowired
    private IStockService stockService;

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

    /**销售
     * 1.保存销售单
     * 2.保存销售商品
     * 3.扣除库存
     * @param sale
     * @return
     */
    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public boolean save(Sale sale) {
        Integer res = 0;
        if (sale.getSaleId() != null && sale.getSaleId() > 0) {
            res = saleDao.edit(sale);
        } else {
            sale.setCreateTime(new Date());
            res = saleDao.add(sale);
            //添加中间表
            if (sale.getSaleGoodses() != null && !sale.getSaleGoodses().isEmpty()) {
                for (SaleGoods sg : sale.getSaleGoodses()) {
                    sg.setSaleId(res);
                    //扣除库存
                    stockService.doStock(sg.getGoodsId(),Math.multiplyExact(sg.getAmount(),-1),sale.getUserId(),StockLogEnum.SALE);
                }
                saleGoodsDao.addBatch(sale.getSaleGoodses());
            }

        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public boolean del(Integer saleId,String userId) {
        List<SaleGoods> saleGoodsList = saleGoodsDao.getBySaleId(saleId);
        //归还库存
        if (saleGoodsList != null && !saleGoodsList.isEmpty()) {
            for (SaleGoods saleGoods : saleGoodsList) {
                stockService.doStock(saleGoods.getGoodsId(),saleGoods.getAmount(),userId, StockLogEnum.SALE);
            }
        }
        //删除销售商品
        saleGoodsDao.delBySaleId(saleId);
        //删除销售单
        Integer res = saleDao.del(saleId);
        return res > 0 ? true : false;
    }
}
