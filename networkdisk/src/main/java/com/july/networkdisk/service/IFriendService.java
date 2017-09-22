package com.july.networkdisk.service;

import java.util.List;
import java.util.Map;

import com.july.networkdisk.vo.Friend;
import com.july.networkdisk.vo.User;

/**
 *@author Ling_jui;
 *@version 2017年9月19日
 *@type IFriendService
 */
public interface IFriendService{
	
	List<User> getAll(String uid, Map<String, Object> map);
	List<User> findOne(String friendname);
	int insertfriend(Friend friend);
}
