package com.zhang.demo.dao;

import java.util.List;

import com.zhang.demo.model.Notice;

public interface NoticeDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Notice record);

    int insertSelective(Notice record);

    Notice selectByPrimaryKey(Integer id);
    
    int updateByPrimaryKeySelective(Notice record);

    int updateByPrimaryKey(Notice record);
    
    List<Notice> getAllNotice();
    
    Notice selectByCode(Integer code);
}