package com.zhang.demo.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.NotesDao;
import com.zhang.demo.model.Notes;
import com.zhang.demo.service.NotesService;

@Service("notesService")
public class NotesServiceImpl implements NotesService{

	@Resource
	private NotesDao notesDao;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return notesDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Notes record) {
		// TODO Auto-generated method stub
		return notesDao.insert(record);
	}

	@Override
	public int insertSelective(Notes record) {
		// TODO Auto-generated method stub
		return notesDao.insertSelective(record);
	}

	@Override
	public Notes selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return notesDao.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Notes record) {
		// TODO Auto-generated method stub
		return notesDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Notes record) {
		// TODO Auto-generated method stub
		return updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Notes record) {
		// TODO Auto-generated method stub
		return notesDao.updateByPrimaryKey(record);
	}

	@Override
	public List<Notes> getAllNotes() {
		// TODO Auto-generated method stub
		return notesDao.getAllNotes();
	}
	

}
