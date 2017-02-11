package com.zhang.demo.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.ResumeDao;
import com.zhang.demo.model.Resume;
import com.zhang.demo.service.ResumeService;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService{

	@Resource
	ResumeDao resumeDao;
	
	public int deleteByPrimaryKey(Integer id) {
		return resumeDao.deleteByPrimaryKey(id);
	}

	public int insert(Resume record) {
		return resumeDao.insert(record);
	}

	public int insertSelective(Resume record) {
		return resumeDao.insertSelective(record);
	}

	public Resume selectByPrimaryKey(Integer id) {
		return resumeDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Resume record) {
		return resumeDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Resume record) {
		return resumeDao.updateByPrimaryKey(record);
	}

	public List<Resume> getAllResume() {
		return resumeDao.getAllResume();
	}

	public Resume selectBySno(Integer sno) {
		return resumeDao.selectBySno(sno);
	}

}
