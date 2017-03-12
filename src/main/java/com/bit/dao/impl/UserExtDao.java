package com.bit.dao.impl;

import com.bit.dao.IUserExtDao;
import com.bit.model.UserExt;
import org.g4studio.core.model.dao.Dao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by qiang on 2017/3/11.
 */
public class UserExtDao implements IUserExtDao {
    @Autowired
    private Dao dao;
    @Override
    public UserExt get(String userId) {
        return (UserExt) dao.getSqlMapClientTpl().queryForObject("UserExt.get",userId);
    }
}
