package com.zhang.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhang.demo.model.EmploymentInfo;
import com.zhang.demo.model.PO;

public interface EmploymentInfoDao {
	int deleteByPrimaryKey(Integer id);

	int insert(EmploymentInfo record);

	int insertSelective(EmploymentInfo record);

	EmploymentInfo selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(EmploymentInfo record);

	int updateByPrimaryKey(EmploymentInfo record);

	EmploymentInfo selectBySno(Integer sno);

	List<EmploymentInfo> getAllEmployInfo();

	List<String> getAllEmail();

	//动态SQL
	List<EmploymentInfo> testList(@Param(value = "name") String name, @Param(value = "major") String major,
			@Param(value = "gra_year") Integer gra_year);
	
	List<EmploymentInfo> optionsYearAndMajor(@Param("gra_year") Integer gra_year, @Param("major") String major);
	
	List<EmploymentInfo> optionsYear(@Param("gra_year") Integer gra_year);
	
	List<PO> optionsMajor(@Param("major") String major);
	
	List<EmploymentInfo> toCheck();
	
	int agree(Integer id);
	
	int reject(Integer id);
	
}