package com.zhang.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhang.demo.model.EmploymentInfo;
import com.zhang.demo.model.PO;
import com.zhang.demo.model.Shit;

public interface EmploymentInfoDao {
	int deleteByPrimaryKey(Integer id);

	int insert(EmploymentInfo record);

	int insertSelective(EmploymentInfo record);

	EmploymentInfo selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(EmploymentInfo record);

	int updateByPrimaryKey(EmploymentInfo record);

	List<EmploymentInfo> selectBySno(Integer sno);

	List<EmploymentInfo> getAllEmployInfo();

	List<String> getAllEmail();

	// 动态SQL
	List<EmploymentInfo> testList(@Param(value = "name") String name, @Param(value = "major") String major,
			@Param(value = "gra_year") Integer gra_year);

	List<EmploymentInfo> optionsYearAndMajor(@Param("gra_year") Integer gra_year, @Param("major") String major);

	List<EmploymentInfo> optionsYear(@Param("gra_year") Integer gra_year);

	List<PO> optionsMajor(@Param("major") String major);

	List<EmploymentInfo> toCheck();

	int agree(Integer id);

	int reject(Integer id);

	List<Shit> getShit(@Param(value = "major") String major, @Param("gra_year") Integer startYear,
			@Param("gra_year") Integer endYear);

}