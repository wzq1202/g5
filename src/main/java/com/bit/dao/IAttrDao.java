package com.bit.dao;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.Supplier;

import java.util.List;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IAttrDao {

    List<Attr> getAll(PageBean<Attr> pageBean);

    Integer getAllCount(PageBean<Attr> pageBean);

    Attr get(Integer attrId);

    Integer add(Attr attr);

    Integer del(Integer attrId);

    Integer edit(Attr attr);
}
