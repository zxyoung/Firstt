package com.zhang.demo.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.AdminDao;
import com.zhang.demo.model.Admin;
import com.zhang.demo.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

	@Resource
	AdminDao adminDao;
	
	public int deleteByPrimaryKey(Integer id) {
		return adminDao.deleteByPrimaryKey(id);
	}

	public int insert(Admin record) {
		return adminDao.insert(record);
	}

	public int insertSelective(Admin record) {
		return adminDao.insertSelective(record);
	}

	public Admin selectByPrimaryKey(Integer id) {
		return adminDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Admin record) {
		return adminDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Admin record) {
		return adminDao.updateByPrimaryKey(record);
	}

	public Admin selectByUsernameAndPassword(String username, String password) {
		return adminDao.adminLoginSelect(username, password);
	}
}
