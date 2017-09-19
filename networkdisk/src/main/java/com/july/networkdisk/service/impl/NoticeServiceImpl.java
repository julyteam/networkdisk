package com.july.networkdisk.service.impl;

import java.util.List;

import com.july.networkdisk.dao.NoticeDao;
import com.july.networkdisk.service.INoticeService;
import com.july.networkdisk.vo.Notice;

public class NoticeServiceImpl implements INoticeService {
	private NoticeDao noticeDao;
	

	public NoticeDao getNoticeDao() {
		return noticeDao;
	}

	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	
	
	public void save(Notice notice) {
		noticeDao.insert(notice);

	}
	
	public void delete(int id) {
		noticeDao.delete(id);
	}

	public void update(Notice p0) {
		// TODO Auto-generated method stub

	}

	public boolean delete(String p0) {
		return false;
		// TODO Auto-generated method stub

	}

	public Notice get(String p0) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Notice> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	



}