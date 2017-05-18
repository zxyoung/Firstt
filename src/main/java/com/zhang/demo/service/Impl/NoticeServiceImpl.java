package com.zhang.demo.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhang.demo.dao.NoticeDao;
import com.zhang.demo.model.Notice;
import com.zhang.demo.service.NoticeService;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	@Resource
	NoticeDao noticeDao;
	
	public int deleteByPrimaryKey(Integer id) {
		return noticeDao.deleteByPrimaryKey(id);
	}

	public int insert(Notice record) {
		return noticeDao.insert(record);
	}

	public int insertSelective(Notice record) {
		return noticeDao.insertSelective(record);
	}

	public Notice selectByPrimaryKey(Integer id) {
		return noticeDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Notice record) {
		return noticeDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Notice record) {
		return noticeDao.updateByPrimaryKey(record);
	}

	public List<Notice> getAllNotice() {
		return noticeDao.getAllNotice();
	}

	public List<Notice> selectByCode(Integer code) {
		return noticeDao.selectByCode(code);
	}

	@Override
	public List<Notice> searchNotice(String jobtitle, String location) {
		return noticeDao.searchNotice(jobtitle, location);
	}


}
