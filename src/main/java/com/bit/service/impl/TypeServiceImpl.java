package com.bit.service.impl;

import com.bit.dao.ITypeDao;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Type;
import com.bit.service.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
@Service
public class TypeServiceImpl implements ITypeService {
    @Autowired
    private ITypeDao typeDao;
    @Override
    public PageList<Type> getAll(PageBean<Type> pageBean) {
        PageList<Type> pageList = new PageList<>();
        List<Type> list = typeDao.getAll(pageBean);
        pageList.setRoot(list);
        pageList.setTotalCount(typeDao.getAllCount(pageBean));
        return pageList;
    }

    @Override
    public Type get(Integer typeId) {
        return typeDao.get(typeId);
    }

    @Override
    public boolean save(Type type) {
        Integer res = 0;
        if (type.getTypeId() != null && type.getTypeId() > 0) {
            res = typeDao.edit(type);
        } else {
            res = typeDao.add(type);
        }
        return (res != null && res > 0) ? true : false;
    }

    @Override
    public boolean del(Integer typeId) {
        Integer res = typeDao.del(typeId);

        return res > 0 ? true : false;
    }

    @Override
    public List<Type> getList() {
        return typeDao.getList();
    }
}
