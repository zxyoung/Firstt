package com.zhang.demo.service;

import java.util.List;

import com.zhang.demo.model.Company;

public interface CompanyService {
	int deleteByPrimaryKey(Integer id);

    int insert(Company record);

    int insertSelective(Company record);

    Company selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKey(Company record);
    
    List<Company> getAllCompany();
    
//    Company selectByCode(Integer code);
    
    Company companyLoginSelect(String cname, String password);

}
