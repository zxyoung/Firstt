package com.zhang.demo.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.EmploymentInfoDao;
import com.zhang.demo.model.EmploymentInfo;
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

}
