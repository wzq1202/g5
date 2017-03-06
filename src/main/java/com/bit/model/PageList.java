package com.bit.model;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

/**
 * Created by qiang on 2017/3/6.
 */
public class PageList<T> {
    @JSONField(name = "TOTALCOUNT")
    private Integer TOTALCOUNT;
    @JSONField(name = "ROOT")
    private List<T> ROOT;

    public Integer getTOTALCOUNT() {
        return TOTALCOUNT;
    }

    public void setTOTALCOUNT(Integer TOTALCOUNT) {
        this.TOTALCOUNT = TOTALCOUNT;
    }

    public List<T> getROOT() {
        return ROOT;
    }

    public void setROOT(List<T> ROOT) {
        this.ROOT = ROOT;
    }

    @Override
    public String toString() {
        return "PageList{" +
                "TOTALCOUNT=" + TOTALCOUNT +
                ", ROOT=" + ROOT +
                '}';
    }
}
