package com.zhang.demo.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.ResumeDao;
import com.zhang.demo.model.Resume;
import com.zhang.demo.model.ResumeWithBLOBs;
import com.zhang.demo.service.ResumeService;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService{

	@Resource
	ResumeDao resumeDao;
	
	public int deleteByPrimaryKey(Integer id) {
		return resumeDao.deleteByPrimaryKey(id);
	}

	public int insert(ResumeWithBLOBs record) {
		return resumeDao.insert(record);
	}

	public int insertSelective(ResumeWithBLOBs record) {
		return resumeDao.insertSelective(record);
	}

	public ResumeWithBLOBs selectByPrimaryKey(Integer id) {
		return resumeDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(ResumeWithBLOBs record) {
		return resumeDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKeyWithBLOBs(ResumeWithBLOBs record) {
		return resumeDao.updateByPrimaryKeyWithBLOBs(record);
	}

	public int updateByPrimaryKey(Resume record) {
		return resumeDao.updateByPrimaryKey(record);
	}

	
}
