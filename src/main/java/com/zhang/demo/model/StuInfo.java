package com.zhang.demo.model;

import java.io.Serializable;
import java.util.Date;

public class StuInfo implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String stuName;

    private Integer sno;

    private String password;

    private String major;

    private String origin;

    private String sex;

    private Date entryYear;

    private Date graYear;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName == null ? null : stuName.trim();
    }

    public Integer getSno() {
        return sno;
    }

    public void setSno(Integer sno) {
        this.sno = sno;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin == null ? null : origin.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getEntryYear() {
        return entryYear;
    }

    public void setEntryYear(Date entryYear) {
        this.entryYear = entryYear;
    }

    public Date getGraYear() {
        return graYear;
    }

    public void setGraYear(Date graYear) {
        this.graYear = graYear;
    }
}