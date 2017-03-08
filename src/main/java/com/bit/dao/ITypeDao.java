package com.bit.dao;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.Type;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface ITypeDao {

    List<Type> getAll(PageBean<Type> pageBean);

    Integer getAllCount(PageBean<Type> pageBean);

    Type get(Integer typeId);

    Integer add(Type type);

    Integer del(Integer typeId);

    Integer edit(Type type);
}
