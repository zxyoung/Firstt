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

	List<Company> testCompanyList(@Param(value = "cname") String cname, @Param(value = "property") String property);

	Company CompanyLoginSelect(@Param("cname") String cname, @Param("password") String password);
}