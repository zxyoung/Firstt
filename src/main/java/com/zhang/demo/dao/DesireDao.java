package com.zhang.demo.dao;

import com.zhang.demo.model.Desire;

public interface DesireDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Desire record);

    int insertSelective(Desire record);

    Desire selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Desire record);

    int updateByPrimaryKey(Desire record);
}