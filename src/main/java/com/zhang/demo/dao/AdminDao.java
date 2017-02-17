package com.zhang.demo.dao;

import org.apache.ibatis.annotations.Param;

import com.zhang.demo.model.Admin;

public interface AdminDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    Admin adminLoginSelect(@Param("username") String username, @Param("password") String password);
    
}