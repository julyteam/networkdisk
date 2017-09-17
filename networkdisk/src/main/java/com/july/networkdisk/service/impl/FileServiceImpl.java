package com.july.networkdisk.service.impl;

import java.io.File;
import java.io.InputStream;
import java.util.List;

import com.july.networkdisk.dao.FileDao;
import com.july.networkdisk.service.IFileService;
import com.july.networkdisk.util.FileUtil;
import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;

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

	public NetFile get(String file_id) {

		return fileDao.get(file_id);
	}
	
	public void fileUpLoad(NetFile netFile, File file, String fileFileName,
			String fileContentType, User user) throws Exception {
		NetFile newNetFile = FileUtil.layFile(file, fileFileName,
				fileContentType, user, netFile);
		save(newNetFile);
	}

	public InputStream fileDownLoad(String netfileID) throws Exception {
		NetFile netfile=get(netfileID);
		return FileUtil.downFile(netfile.getPath());
	}
	
	public void update(NetFile file) {
		// TODO Auto-generated method stub

	}

	public void delete(String p0) {
		

	}

	public List<NetFile> getAll() {
		// TODO Auto-generated method stub
		return null;
	}


}
