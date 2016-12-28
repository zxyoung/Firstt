package com.zhang.demo.dao;

import java.util.List;

import com.zhang.demo.model.StuInfo;

public interface StuInfoDao {
    int deleteByPrimaryKey(Integer id);

    int insert(StuInfo record);

    int insertSelective(StuInfo record);

    StuInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StuInfo record);

    int updateByPrimaryKey(StuInfo record);
    
    List<StuInfo> getAllStuInfo();
}