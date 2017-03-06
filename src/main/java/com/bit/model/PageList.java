package com.bit.model;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

/**
 * Created by qiang on 2017/3/6.
 */
public class PageList<T> {
    private Integer totalCount;
    private List<T> root;

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public List<T> getRoot() {
        return root;
    }

    public void setRoot(List<T> root) {
        this.root = root;
    }

    @Override
    public String toString() {
        return "PageList{" +
                "totalCount=" + totalCount +
                ", root=" + root +
                '}';
    }
}
