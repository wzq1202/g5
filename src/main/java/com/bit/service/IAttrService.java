package com.bit.service;

import com.bit.model.Attr;
import com.bit.model.PageBean;
import com.bit.model.PageList;
import com.bit.model.Supplier;

/**
 * Created by qiang on 2017/3/5.
 */
public interface IAttrService {
    /**
     * 分页查询供货商列表
     * @param pageBean
     * @return
     */
    PageList<Attr> getAll(PageBean<Attr> pageBean);

    /**
     * 通过ID 查询供货商信息
     * @param attrId
     * @return
     */
    Attr get(Integer attrId);

    /**
     * 保存供货商信息
     * @param attr
     * @return
     */
    boolean save(Attr attr);

    /**
     * 删除供货商
     * @param attrId
     * @return
     */
    boolean del(Integer attrId);

}
