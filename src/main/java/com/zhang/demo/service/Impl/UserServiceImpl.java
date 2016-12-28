package com.zhang.demo.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.UserDao;
import com.zhang.demo.model.User;
import com.zhang.demo.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;

	public int insert(User user) {
		return userDao.insert(user);
	}

	public int insertSelective(User user) {
		return userDao.insertSelective(user);
	}

	public User getUserById(int id) {
		return userDao.selectByPrimaryKey(id);
	}

	public List<User> getAllUser() {
		return userDao.getAllUser();
	}

	public int delete(int id) {
		return userDao.deleteByPrimaryKey(id);
	}

	public int updateByPrimaryKey(User user) {
		return userDao.updateByPrimaryKey(user);
	}

	public int updateByPrimaryKeySelective(User user) {
		return userDao.updateByPrimaryKeySelective(user);
	}

}
