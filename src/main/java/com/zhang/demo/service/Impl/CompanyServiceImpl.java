package com.zhang.demo.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.CompanyDao;
import com.zhang.demo.model.Company;
import com.zhang.demo.service.CompanyService;


@Service("companyService")
public class CompanyServiceImpl implements CompanyService{

	@Resource
	CompanyDao companyDao;
	
	public int deleteByPrimaryKey(Integer id) {
		return companyDao.deleteByPrimaryKey(id);
	}

	public int insert(Company record) {
		return companyDao.insert(record);
	}

	public int insertSelective(Company record) {
		return companyDao.insertSelective(record);
	}

	public Company selectByPrimaryKey(Integer id) {
		return companyDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Company record) {
		return companyDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Company record) {
		return companyDao.updateByPrimaryKey(record);
	}

	public List<Company> getAllCompany() {
		return companyDao.getAllCompany();
	}

	public Company companyLoginSelect(String cname, String password) {
		return companyDao.CompanyLoginSelect(cname, password);
	}

//	public Company selectByCode(Integer code) {
//		return companyDao.selectByCode(code);
//	}


}
