package com.bit.model;

/**
 * Created by qiang on 2017/3/5.
 */
public class Supplier {
    private Integer supplierId;
    private String supplierName;
    private String addr;
    private Long tel;
    private String email;
    private String qq;
    private String contacts;

    public Integer getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public Long getTel() {
        return tel;
    }

    public void setTel(Long tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "supplierId=" + supplierId +
                ", supplierName='" + supplierName + '\'' +
                ", addr='" + addr + '\'' +
                ", tel=" + tel +
                ", email='" + email + '\'' +
                ", qq='" + qq + '\'' +
                ", contacts='" + contacts + '\'' +
                '}';
    }
}
