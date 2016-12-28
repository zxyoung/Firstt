package com.zhang.demo.service;

import java.util.List;

import com.zhang.demo.model.User;

public interface UserService {
	
	public int insert(User user);
	
	public int insertSelective(User user);
	
	public User getUserById(int id);
	
	public List<User> getAllUser();
	
	public int delete(int id);
	
	public int updateByPrimaryKey(User user);
	
	public int updateByPrimaryKeySelective(User user);
}
