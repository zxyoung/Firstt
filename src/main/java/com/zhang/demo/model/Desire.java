package com.zhang.demo.model;

import java.io.Serializable;

public class Desire implements Serializable {
    private Integer id;

    private Integer sno;

    private String passport;

    private String examnum;

    private String willingone;

    private String willingtwo;

    private String willingthree;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSno() {
        return sno;
    }

    public void setSno(Integer sno) {
        this.sno = sno;
    }

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport == null ? null : passport.trim();
    }

    public String getExamnum() {
        return examnum;
    }

    public void setExamnum(String examnum) {
        this.examnum = examnum == null ? null : examnum.trim();
    }

    public String getWillingone() {
        return willingone;
    }

    public void setWillingone(String willingone) {
        this.willingone = willingone == null ? null : willingone.trim();
    }

    public String getWillingtwo() {
        return willingtwo;
    }

    public void setWillingtwo(String willingtwo) {
        this.willingtwo = willingtwo == null ? null : willingtwo.trim();
    }

    public String getWillingthree() {
        return willingthree;
    }

    public void setWillingthree(String willingthree) {
        this.willingthree = willingthree == null ? null : willingthree.trim();
    }
}