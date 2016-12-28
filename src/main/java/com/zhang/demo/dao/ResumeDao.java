package com.zhang.demo.dao;

import com.zhang.demo.model.Resume;
import com.zhang.demo.model.ResumeWithBLOBs;

public interface ResumeDao {
    int deleteByPrimaryKey(Integer id);

    int insert(ResumeWithBLOBs record);

    int insertSelective(ResumeWithBLOBs record);

    ResumeWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ResumeWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ResumeWithBLOBs record);

    int updateByPrimaryKey(Resume record);
}