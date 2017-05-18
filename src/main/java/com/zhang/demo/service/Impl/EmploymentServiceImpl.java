package com.zhang.demo.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.EmploymentInfoDao;
import com.zhang.demo.model.EmploymentInfo;
import com.zhang.demo.model.PO;
import com.zhang.demo.service.EmploymentService;

@Service("employmentService")
public class EmploymentServiceImpl implements EmploymentService{

	@Resource
	EmploymentInfoDao employmentInfoDao;
	
	public int deleteByPrimaryKey(Integer id) {
		return employmentInfoDao.deleteByPrimaryKey(id);
	}

	public int insert(EmploymentInfo record) {
		return employmentInfoDao.insert(record);
	}

	public int insertSelective(EmploymentInfo record) {
		return employmentInfoDao.insertSelective(record);
	}

	public EmploymentInfo selectByPrimaryKey(Integer id) {
		return employmentInfoDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(EmploymentInfo record) {
		return employmentInfoDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(EmploymentInfo record) {
		return employmentInfoDao.updateByPrimaryKey(record);
	}

	public List<String> getAllEmail() {
		return employmentInfoDao.getAllEmail();
	}

	public EmploymentInfo selectBySno(Integer sno) {
		return employmentInfoDao.selectBySno(sno);
	}

	public List<EmploymentInfo> getAllEmployInfo() {
		return employmentInfoDao.getAllEmployInfo();
	}

	@Override
	public List<EmploymentInfo> testList(String name, String major, Integer graYear) {
		return employmentInfoDao.testList(name, major, graYear);
	}

	@Override
	public List<EmploymentInfo> optionsYearAndMajor(Integer gra_year, String major) {
		return employmentInfoDao.optionsYearAndMajor(gra_year, major);
	}

	@Override
	public List<EmploymentInfo> optionsYear(Integer gra_year) {
		return employmentInfoDao.optionsYear(gra_year);
	}

	@Override
	public List<PO> optionsMajor(String major) {
		return employmentInfoDao.optionsMajor(major);
	}

	@Override
	public List<EmploymentInfo> toCheckList() {
		return employmentInfoDao.toCheck();
	}

	@Override
	public int agree(Integer id) {
		return employmentInfoDao.agree(id);
	}

	@Override
	public int reject(Integer id) {
		return employmentInfoDao.reject(id);
	}
}
