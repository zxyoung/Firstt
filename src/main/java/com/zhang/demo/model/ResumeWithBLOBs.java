package com.zhang.demo.model;

import java.io.Serializable;

public class ResumeWithBLOBs extends Resume implements Serializable {
    private String major;

    private String majorCourse;

    private String experiencn;

    private String introduction;

    private static final long serialVersionUID = 1L;

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getMajorCourse() {
        return majorCourse;
    }

    public void setMajorCourse(String majorCourse) {
        this.majorCourse = majorCourse == null ? null : majorCourse.trim();
    }

    public String getExperiencn() {
        return experiencn;
    }

    public void setExperiencn(String experiencn) {
        this.experiencn = experiencn == null ? null : experiencn.trim();
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction == null ? null : introduction.trim();
    }
}