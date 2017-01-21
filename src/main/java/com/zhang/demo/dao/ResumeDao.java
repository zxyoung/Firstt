package com.zhang.demo.dao;

import java.util.List;

import com.zhang.demo.model.Resume;

public interface ResumeDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Resume record);

    int insertSelective(Resume record);

    Resume selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Resume record);

    int updateByPrimaryKey(Resume record);
    
    List<Resume> getAllResume();
    
}