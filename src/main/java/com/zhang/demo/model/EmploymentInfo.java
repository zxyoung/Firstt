package com.zhang.demo.model;

import java.io.Serializable;

public class EmploymentInfo implements Serializable {
    private Integer id;

    private String name;

    private Integer sno;

    private String major;

    private Integer graYear;

    private String passport;

    private String email;

    private String gowhere;

    private Integer salary;

    private String companyname;

    private Integer ccode;

    private String cproperties;

    private String ctrade;

    private String location;

    private String jobtitle;

    private String contacts;

    private String contactsphone;

    private String cemail;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getSno() {
        return sno;
    }

    public void setSno(Integer sno) {
        this.sno = sno;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public Integer getGraYear() {
        return graYear;
    }

    public void setGraYear(Integer graYear) {
        this.graYear = graYear;
    }

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport == null ? null : passport.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getGowhere() {
        return gowhere;
    }

    public void setGowhere(String gowhere) {
        this.gowhere = gowhere == null ? null : gowhere.trim();
    }

    public Integer getSalary() {
        return salary;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public Integer getCcode() {
        return ccode;
    }

    public void setCcode(Integer ccode) {
        this.ccode = ccode;
    }

    public String getCproperties() {
        return cproperties;
    }

    public void setCproperties(String cproperties) {
        this.cproperties = cproperties == null ? null : cproperties.trim();
    }

    public String getCtrade() {
        return ctrade;
    }

    public void setCtrade(String ctrade) {
        this.ctrade = ctrade == null ? null : ctrade.trim();
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getJobtitle() {
        return jobtitle;
    }

    public void setJobtitle(String jobtitle) {
        this.jobtitle = jobtitle == null ? null : jobtitle.trim();
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts == null ? null : contacts.trim();
    }

    public String getContactsphone() {
        return contactsphone;
    }

    public void setContactsphone(String contactsphone) {
        this.contactsphone = contactsphone == null ? null : contactsphone.trim();
    }

    public String getCemail() {
        return cemail;
    }

    public void setCemail(String cemail) {
        this.cemail = cemail == null ? null : cemail.trim();
    }
}