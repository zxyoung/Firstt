package com.zhang.demo.dao;

import java.util.List;

import com.zhang.demo.model.EmploymentInfo;

public interface EmploymentInfoDao {
    int deleteByPrimaryKey(Integer id);

    int insert(EmploymentInfo record);

    int insertSelective(EmploymentInfo record);

    EmploymentInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(EmploymentInfo record);

    int updateByPrimaryKey(EmploymentInfo record);
    
    EmploymentInfo selectBySno(Integer sno);
    
    List<String> getAllEmail();
    
    List<EmploymentInfo> getAllEmployInfo();
}