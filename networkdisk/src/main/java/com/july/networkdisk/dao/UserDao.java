package com.july.networkdisk.dao;

import java.util.List;

import com.july.networkdisk.vo.*;

import org.apache.ibatis.session.*;
import org.omg.PortableInterceptor.SUCCESSFUL;

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


	public void update(User user) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		sqlSession.update("userSpace.update", user);
        sqlSession.close();
	}


	//前台用户名注册判断
	public User selectUserByName(String name)
	{
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		User u=sqlSession.selectOne("userSpace.selectUserByname",name);
		sqlSession.close();
		return u;
		
	}
	//前台手机号注册判断
	public User selectUserByTel(String phone)
	{
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		User u=sqlSession.selectOne("userSpace.selectUserBytel",phone);
		sqlSession.close();
		return u;
		
	}
	//前台邮箱注册判断
		public User selectUserByEmail(String email)
		{
			final SqlSession sqlSession = this.sqlSessionFactory.openSession();
			User u=sqlSession.selectOne("userSpace.selectUserByemail",email);
			sqlSession.close();
			return u;
			
		}

		public User get(String id) {
			final SqlSession sqlSession = this.sqlSessionFactory.openSession();
			User u=sqlSession.selectOne("userSpace.get",id);
			sqlSession.close();
			return u;
		}

		public void photoup(User user) {
			final SqlSession sqlSession = this.sqlSessionFactory.openSession();
			sqlSession.update("userSpace.photoup",user);
			sqlSession.close();
		}
	
	
	//修改个人信息
	/*public int updateUser(User user)
	{
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		 int i=sqlSession.update(arg0)
		
		return 1;
	}*/
   

	
}
