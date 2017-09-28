package com.july.networkdisk.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.july.networkdisk.vo.Friend;
import com.july.networkdisk.vo.User;

/**
 *@author Ling_jui;
 *@version 2017年9月20日
 *@type FriendDao
 */

public class FriendDao extends BaseDao{
	
	/**
	 * @author Administrator
	 * 查找所有好友
	 */	
	public List<User> findAll(String uid) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<User> list = sqlSession.selectList("userSpace.getAllfriend",uid);
		sqlSession.close();
		return list;
	}
	/**
	 * @author Administrator
	 * 根据input框中输入的昵称或者手机号查找好友
	 * 
	 */	
	public List<User> findOne(String friendname){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<User> list = sqlSession.selectList("userSpace.getOnefriend",friendname);
		sqlSession.close();
		return list;
	}
	
	/**
	 * @author Administrator
	 * 添加好友
	 * 
	 */	
	
	public void addfriend(Friend friend){
		 final SqlSession sqlSession = this.sqlSessionFactory.openSession();
	     sqlSession.insert("friendSpace.addfriend",friend);
	     sqlSession.close();
	}

}
