package com.bit.dao;

import com.bit.model.UserExt;

/**
 * Created by qiang on 2017/3/11.
 */
public interface IUserExtDao {
    UserExt get(String userId);
}
