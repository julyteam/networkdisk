package com.july.networkdisk.service.impl;

import java.util.List;

import com.july.networkdisk.dao.FileDao;
import com.july.networkdisk.service.IFileService;
import com.july.networkdisk.vo.NetFile;

public class FileServiceImpl implements IFileService {
	private FileDao fileDao;
	public FileDao getFileDao() {
		return fileDao;
	}
	public void setFileDao(FileDao fileDao) {
		this.fileDao = fileDao;
	}
	
	public void save(NetFile file) {
		fileDao.save(file);
	}

	public List<NetFile> findAllByUser(String userID) {
		return fileDao.findAllByUser(userID);
	}
	
	
	
	public void update(NetFile file) {
		// TODO Auto-generated method stub
		
	}

	public void delete(String p0) {
		// TODO Auto-generated method stub
		
	}

	public NetFile get(String p0) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<NetFile> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
