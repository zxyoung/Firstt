package com.zhang.demo.service;

import java.util.List;

import com.zhang.demo.model.EmploymentInfo;
import com.zhang.demo.model.PO;
import com.zhang.demo.model.Shit;

public interface EmploymentService {
	int deleteByPrimaryKey(Integer id);

	int insert(EmploymentInfo record);

	int insertSelective(EmploymentInfo record);

	EmploymentInfo selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(EmploymentInfo record);

	int updateByPrimaryKey(EmploymentInfo record);

	List<EmploymentInfo> selectBySno(Integer sno);

	List<String> getAllEmail();

	List<EmploymentInfo> getAllEmployInfo();

	List<EmploymentInfo> testList(String name, String major, Integer graYear);
	
	List<EmploymentInfo> optionsYearAndMajor(Integer gra_year, String major);
	
	List<EmploymentInfo> optionsYear(Integer gra_year);
	
	List<PO> optionsMajor(String major);
	
	List<EmploymentInfo> toCheckList();
	
	int agree(Integer id);
	
	int reject(Integer id);
	
	List<Shit> getShitList(String major, Integer startYear, Integer endYear);
}
