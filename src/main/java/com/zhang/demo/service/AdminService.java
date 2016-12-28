package com.zhang.demo.service;

import com.zhang.demo.model.Admin;

public interface AdminService {
	int deleteByPrimaryKey(Integer id);

	int insert(Admin record);

	int insertSelective(Admin record);

	Admin selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Admin record);

	int updateByPrimaryKey(Admin record);
}
