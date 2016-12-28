package com.zhang.demo.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.StuAccountDao;
import com.zhang.demo.dao.StuInfoDao;
import com.zhang.demo.model.StuAccount;
import com.zhang.demo.model.StuInfo;
import com.zhang.demo.service.StuService;

@Service("stuService")
public class StuServiceImpl implements StuService {

	@Resource
	StuInfoDao stuInfoDao;

	@Resource
	StuAccountDao stuAccountDao;

	/********************************** 学生信息相关操作 **********************************/

	/**
	 * 
	 */
	public int deleteStuInfoByPrimaryKey(Integer id) {
		return stuInfoDao.deleteByPrimaryKey(id);
	}

	public int insertStuInfo(StuInfo record) {
		return stuInfoDao.insert(record);
	}

	public int insertStuInfoSelective(StuInfo record) {
		return stuInfoDao.insertSelective(record);
	}

	public StuInfo selectStuInfoByPrimaryKey(Integer id) {
		return selectStuInfoByPrimaryKey(id);
	}

	public int updateStuInfoByPrimaryKeySelective(StuInfo record) {
		return stuInfoDao.updateByPrimaryKeySelective(record);
	}

	public int updateStuInfoByPrimaryKey(StuInfo record) {
		return stuInfoDao.updateByPrimaryKey(record);
	}

	public List<StuInfo> getAllStuInfo() {
		return stuInfoDao.getAllStuInfo();
	}

	/********************************** 学生账号相关操作 **********************************/

	/**
	 * 
	 */
	public int deleteAccountByPrimaryKey(Integer id) {
		return stuAccountDao.deleteByPrimaryKey(id);
	}

	public int insertAccount(StuAccount record) {
		return stuAccountDao.insert(record);
	}

	public int insertAccountSelective(StuAccount record) {
		return stuAccountDao.insertSelective(record);
	}

	public List<StuAccount> getAllAccount() {
		return stuAccountDao.getAllAccount();
	}

	public StuAccount selectBySno(Integer sno) {
		return stuAccountDao.selectBySno(sno);
	}

}
