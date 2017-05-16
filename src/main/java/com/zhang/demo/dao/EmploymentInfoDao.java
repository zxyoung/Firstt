package com.zhang.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhang.demo.model.EmploymentInfo;

public interface EmploymentInfoDao {
	int deleteByPrimaryKey(Integer id);

	int insert(EmploymentInfo record);

	int insertSelective(EmploymentInfo record);

	EmploymentInfo selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(EmploymentInfo record);

	int updateByPrimaryKey(EmploymentInfo record);

	EmploymentInfo selectBySno(Integer sno);

	List<EmploymentInfo> getAllEmployInfo();

	List<EmploymentInfo> getAllEmail();

	List<EmploymentInfo> testList(@Param(value = "name") String name, @Param(value = "major") String major,
			@Param(value = "gra_year") Integer gra_year);
}