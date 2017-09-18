package com.july.networkdisk.dao;

import java.util.List;

import com.july.networkdisk.vo.*;

import org.apache.ibatis.session.*;

public class UserDao extends BaseDao
{
    public void save( User user) {
        final SqlSession sqlSession = this.sqlSessionFactory.openSession();
        sqlSession.insert("userSpace.save", user);
        sqlSession.close();
    }

	public User findOne(User user) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
        User u = sqlSession.selectOne("userSpace.findOne", user);
        sqlSession.close();
		return u;
	}

	public List<User> getAll() {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
        List<User> u = sqlSession.selectList("userSpace.getAll");
        sqlSession.close();
		return u;
	}

	
}
