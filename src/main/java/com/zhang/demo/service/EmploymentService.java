package com.zhang.demo.service;

import java.util.List;

import com.zhang.demo.model.EmploymentInfo;

public interface EmploymentService {
	int deleteByPrimaryKey(Integer id);

	int insert(EmploymentInfo record);

	int insertSelective(EmploymentInfo record);

	EmploymentInfo selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(EmploymentInfo record);

	int updateByPrimaryKey(EmploymentInfo record);

	EmploymentInfo selectBySno(Integer sno);

	List<EmploymentInfo> getAllEmail();

	List<EmploymentInfo> getAllEmployInfo();

	List<EmploymentInfo> testList(String name, String major, Integer graYear);
}
