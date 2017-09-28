package com.july.networkdisk.service;

import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;

public interface IFileService extends IBaseService<NetFile> {
	/**
	 * 根据用户查找每个目录下所有文件 区分在不在回收站
	 * 参数为用户id,所属文件夹id,是否删除
	 */
	List<NetFile> findAllByUser(String file_uid,Map<String, Object> map);
	
	
	/**
	 * 根据文件夹id和是否回收来找所有的文件
	 * @param cat_id
	 * @param file_deletesign
	 * @return
	 */
	List<String> findAllByCatId(String cat_id,Integer file_deletesign);
	


	void fileUpLoad(NetFile netFile,File file, String fileFileName,
			String fileContentType, User user) throws Exception;
	
	InputStream fileDownLoad(String netFileID) throws Exception;
	
	boolean deleteBatch(List<String> netFile_ids);

	boolean layRecyle(String netFile_id,Integer file_deletesign);
	
	boolean layBatchRecyle(List<String> netFile_ids,Integer file_deletesign);
	
	/**
	 * 移动文件
	 * @param netFile_id
	 * @param cat_id
	 * @return
	 */
	boolean moveFile(String netFile_id,String cat_id);
	/**
	 * 显示在回收张中的文件
	 * @param file_uid
	 * @return
	 */
	List<NetFile> showRecycleFile(String file_uid);
}
