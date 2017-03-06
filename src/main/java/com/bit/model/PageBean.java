package com.bit.model;

/**
 * Created by qiang on 2017/3/6.
 */
public class PageBean<T> {
    private T where;
    private Integer start;
    private Integer limit;

    public T getWhere() {
        return where;
    }

    public void setWhere(T where) {
        this.where = where;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "where=" + where +
                ", start=" + start +
                ", limit=" + limit +
                '}';
    }

    public Integer getSkips(){
        return (start - 1) * limit;
    }
}
