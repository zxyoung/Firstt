package com.zhang.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhang.demo.model.Company;

public interface CompanyDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Company record);

    int insertSelective(Company record);

    Company selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKey(Company record);
    
    List<Company> getAllCompany();
    
//    Company selectByCode(Integer code);
    
    Company CompanyLoginSelect(@Param("cname") String cname, @Param("password") String password);
}