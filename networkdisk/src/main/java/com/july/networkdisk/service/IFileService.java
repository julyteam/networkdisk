package com.july.networkdisk.service;

import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;

public interface IFileService extends IBaseService<NetFile> {
	List<NetFile> findAllByUser(String file_uid,Map<String, Object> map);

	void fileUpLoad(NetFile netFile,File file, String fileFileName,
			String fileContentType, User user) throws Exception;
	
	InputStream fileDownLoad(String netFileID) throws Exception;
	
	boolean deleteBatch(String[] netFile_ids);
	
	boolean layRecyle(String netFile_id);
	
	boolean layBatchRecyle(String[] netFile_ids);
	
	boolean moveFile(String netFile_id,String cat_id);
}
