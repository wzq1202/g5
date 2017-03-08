package com.bit.service.impl;

import com.bit.dao.IAttrDao;
import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.service.IAttrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class AttrServiceImpl implements IAttrService {
    @Autowired
    private IAttrDao attrDao;
    @Override
    public PageList<Attr> getAll(PageBean<Attr> pageBean) {
        PageList<Attr> pageList = new PageList<>();
        List<Attr> list = attrDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(attrDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public Attr get(Integer attrId) {
        return attrDao.get(attrId);
    }

    @Override
    public boolean save(Attr attr) {
        Integer res = 0;
        if (attr.getAttrId() != null && attr.getAttrId() > 0) {
            res = attrDao.edit(attr);
        } else {
            res = attrDao.add(attr);
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    public boolean del(Integer attrId) {
        Integer res = attrDao.del(attrId);

        return res > 0 ? true : false;
    }
}
