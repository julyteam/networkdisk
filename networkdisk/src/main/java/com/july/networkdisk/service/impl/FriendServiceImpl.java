package com.july.networkdisk.service.impl;

import java.util.List;
import java.util.Map;

import com.july.networkdisk.dao.FriendDao;
import com.july.networkdisk.service.IFriendService;
import com.july.networkdisk.vo.Friend;
import com.july.networkdisk.vo.User;

/**
 *@author Ling_jui;
 *@version 2017年9月19日
 *@type FriendServiceImpl
 */
public class FriendServiceImpl implements IFriendService{
	
	private FriendDao friendDao;

	public void save(Friend p0) {
		// TODO Auto-generated method stub
		
	}

	public void update(Friend p0) {
		// TODO Auto-generated method stub
		
	}

	public boolean delete(String p0) {
		// TODO Auto-generated method stub
		return false;
	}

	public Friend get(String p0) {
		// TODO Auto-generated method stub
		return null;
	}
	/*好友列表*/
	public List<User> getAll(String uid) {
		// TODO Auto-generated method stub
		
		return friendDao.findAll(uid);
	}
	/*查询好友*/
	public List<User> findOne(String friendname) {
		// TODO Auto-generated method stub
		return friendDao.findOne(friendname);
	}
	public FriendDao getFriendDao() {
		return friendDao;
	}

	public void setFriendDao(FriendDao friendDao) {
		this.friendDao = friendDao;
	}

	public int insertfriend(Friend friend) {
		// TODO Auto-generated method stub
		return 0;
	}
}
