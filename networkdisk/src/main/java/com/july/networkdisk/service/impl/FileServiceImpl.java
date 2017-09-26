package com.july.networkdisk.service.impl;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	/**
	 * 保存文件
	 */
	public void save(NetFile file) {
		fileDao.save(file);
	}

	/**
	 * 根据用户查找每个目录下所有文件 区分在不在回收站
	 */
	public List<NetFile> findAllByUser(String file_uid, Map<String, Object> map) {
		map.put("file_uid", file_uid);
		return fileDao.findAllByUser(map);
	}
	/**
	 * 根据文件夹目录和是否删除 来找文件的ID。用于文件的回收和删除
	 */
	public List<String> findAllByCatId(String cat_id, Integer file_deletesign) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("file_catid", cat_id);
		map.put("file_deletesign", file_deletesign);
		return fileDao.findFileIDByCateID(map);
	}


	/**
	 * 得到在或者不在回收站的一个文件,当flag为空时，就忽略是否在回收站中。
	 */
	public NetFile get(String netFile_id, Integer flag) {
		NetFile netfile = fileDao.get(netFile_id, flag);
		return netfile;
	}

	/**
	 * 文件上传
	 */
	public void fileUpLoad(NetFile netFile, File file, String fileFileName,
			String fileContentType, User user) throws Exception {
		NetFile newNetFile = FileUtil.layFile(file, fileFileName,
				fileContentType, user, netFile);
		save(newNetFile);
	}

	/**
	 * 文件下载
	 */
	public InputStream fileDownLoad(String netFile_id) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		NetFile netfile = get(netFile_id, 0);
		map.put("file_downum", netfile.getDownum() + 1);
		fileDao.updateFile(netFile_id, map);
		return FileUtil.downFile(netfile.getPath());
	}

	/**
	 * 把一个文件放入,或放出回收站
	 * 
	 * @param netFile_id
	 * @return
	 */
	public boolean layRecyle(String netFile_id,Integer file_deletesign) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("file_deletesign", file_deletesign);
		fileDao.updateFile(netFile_id, map);
		return true;
	}

	/**
	 * 把一批文件放入或放出到回收站中
	 * 
	 * 
	 */
	public boolean layBatchRecyle(List<String> netFile_ids,Integer file_deletesign) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",netFile_ids );
		map.put("file_deletesign", file_deletesign);
		fileDao.updateDeleteSingBatch(map);
		return false;
	}

	/**
	 * 在回收站中删除数据库中的一个文件
	 */
	public boolean delete(String netFile_id) {
		fileDao.deleteOne(netFile_id);
		return true;
	}

	/**
	 * 在回收站中删除数据库中的一批文件
	 */
	public boolean deleteBatch(List<String> netFile_ids) {
		fileDao.deleteBatch(netFile_ids);
		return true;
	}

	/**
	 * 移动文件
	 */
	public boolean moveFile(String netFile_id,String file_catid) {
		fileDao.updateFileCate(netFile_id, file_catid);
		return true;
	}

	public void update(NetFile file) {

	}

	public NetFile get(String netFile_id) {

		return null;
	}




}
