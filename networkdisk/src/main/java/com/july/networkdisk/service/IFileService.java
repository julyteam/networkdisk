package com.july.networkdisk.service;

import java.util.List;

import com.july.networkdisk.vo.NetFile;

public interface IFileService extends IBaseService<NetFile> {
	List<NetFile> findAllByUser(String userID);
}
