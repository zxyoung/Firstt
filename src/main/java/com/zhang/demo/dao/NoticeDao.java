package com.zhang.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhang.demo.model.Notice;

public interface NoticeDao {
	int deleteByPrimaryKey(Integer id);

	int insert(Notice record);

	int insertSelective(Notice record);

	Notice selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Notice record);

	int updateByPrimaryKey(Notice record);

	List<Notice> getAllNotice();

	List<Notice> selectByCode(Integer code);
	
	List<Notice> searchNotice(@Param("jobtitle") String jobtitle, @Param("location") String location);
}