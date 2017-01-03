package com.zhang.demo.dao;

import java.util.List;

import com.zhang.demo.model.StuAccount;
import com.zhang.demo.model.StuInfo;

public interface StuAccountDao {
	/**
	 * 删除账号
	 * 
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * 新增一个账号
	 * 
	 * @param record
	 * @return
	 */
	int insert(StuAccount record);

	/**
	 * 新增一个账号 Selective
	 * 
	 * @param record
	 * @return
	 */
	int insertSelective(StuAccount record);

	/**
	 * 按主键查找
	 * 
	 * @param id
	 * @return 一个学生账号实体
	 */
	StuAccount selectByPrimaryKey(Integer id);

	/**
	 * 按学号查找信息
	 * 
	 * @param sno
	 * @return
	 */
	StuInfo selectStuInfoBySno(Integer sno);

	/**
	 * 更新
	 * 
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeySelective(StuAccount record);

	/**
	 * 更新1
	 * 
	 * @param record
	 * @return
	 */
	int updateByPrimaryKey(StuAccount record);

	/**
	 * 获得所有学生账号
	 * 
	 * @return
	 */
	List<StuAccount> getAllAccount();

	/**
	 * 按学号查找
	 * 
	 * @param sno
	 * @return
	 */
	StuAccount selectBySno(Integer sno);
}