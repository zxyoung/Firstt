package com.zhang.demo.service;

import java.util.List;

import com.zhang.demo.model.Notes;

public interface NotesService {
	int deleteByPrimaryKey(Integer id);

    int insert(Notes record);

    int insertSelective(Notes record);

    Notes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Notes record);

    int updateByPrimaryKeyWithBLOBs(Notes record);

    int updateByPrimaryKey(Notes record);
    
    List<Notes> getAllNotes();
}
