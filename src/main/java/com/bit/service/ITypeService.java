package com.bit.service;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Type;

/**
 * Created by qiang on 2017/3/5.
 */
public interface ITypeService {
    PageList<Type> getAll(PageBean<Type> pageBean);

    Type get(Integer typeId);

    boolean save(Type type);

    boolean del(Integer typeId);

}
