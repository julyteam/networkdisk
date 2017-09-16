package com.july.networkdisk.dao;

import org.apache.ibatis.session.SqlSession;

import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;

public class FileDao extends BaseDao {
	public void save(NetFile file) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		sqlSession.insert("fileSpace.save", file);
		sqlSession.close();
	}
}
