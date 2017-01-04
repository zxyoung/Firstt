package com.zhang.demo.service;

import java.util.List;

import com.zhang.demo.model.StuAccount;
import com.zhang.demo.model.StuInfo;

public interface StuService {
	
	/********************************学生信息相关操作****************************************/
	
	/**
	 * 删除一条记录
	 * @param id
	 * @return
	 */
	int deleteStuInfoByPrimaryKey(Integer id);

	/**
	 * 插入一条记录
	 * @param record
	 * @return
	 */
	int insertStuInfo(StuInfo record);

	/**
	 * 插入一条记录 Selective
	 * @param record
	 * @return
	 */
	int insertStuInfoSelective(StuInfo record);

	/**
	 * 根据主键查找记录
	 * @param id
	 * @return
	 */
	StuInfo selectStuInfoByPrimaryKey(Integer id);
	
	/**
	 * 根据学号查找记录
	 * @param sno
	 * @return
	 */
	StuInfo selectStuInfoBySno(Integer sno);

	/**
	 * 更新记录
	 * @param record
	 * @return
	 */
	int updateStuInfoByPrimaryKeySelective(StuInfo record);

	/**
	 * 更新记录
	 * @param record
	 * @return
	 */
	int updateStuInfoByPrimaryKey(StuInfo record);

	/**
	 * 获得所有记录
	 * @return
	 */
	List<StuInfo> getAllStuInfo();
	

	
	/************************************学生账号相关操作***************************************/
	
	
	/**
	 * 删除账号
	 * @param id
	 * @return
	 */
    int deleteAccountBySno(Integer id);
    
    /**
     * 增加一个账号
     * @param record
     * @return
     */
    int insertAccount(StuAccount record);

    /**
     * 增加一个账号 Selective
     * @param record
     * @return
     */
    int insertAccountSelective(StuAccount record);
    
    /**
     * 获得所有账号
     * @return list
     */
    List<StuAccount> getAllAccount();
    
    /**
     * 按学号查找
     * @param sno
     * @return
     */
    StuAccount selectBySno(Integer sno);

//    StuAccount selectByPrimaryKey(Integer id);

//    int updateByPrimaryKeySelective(StuAccount record);

//    int updateByPrimaryKey(StuAccount record);
	

}
