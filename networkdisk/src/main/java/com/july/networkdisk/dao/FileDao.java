package com.july.networkdisk.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;

public class FileDao extends BaseDao {
	public void save(NetFile file) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		sqlSession.insert("fileSpace.save", file);
		sqlSession.close();
	}
	
	public List<NetFile> findAllByUser(String userID) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		
		List<NetFile> list = sqlSession.selectList("fileSpace.findAllByUser", userID);
		sqlSession.close();
		return list;
	}
	
	public NetFile get(String file_id){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		NetFile netFile=sqlSession.selectOne("fileSpace.get", file_id);
		sqlSession.close();
		return netFile;
	}
}
