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
	
	//密码修改
		public void updatePassword(User user)
		{
			final SqlSession sqlSession = this.sqlSessionFactory.openSession();
			sqlSession.update("userSpace.updatePassword",user);
			sqlSession.close();
		}
		/*我的分享*/
		public List<Share> getmyshare(String uid) {
			final SqlSession sqlSession = this.sqlSessionFactory.openSession();
			List<Share> share = sqlSession.selectList("shareSpace.getallbyuid", uid);
			sqlSession.close();
			return share;
		}

		public List<Sharefile> getsharefile(String magid) {
			final SqlSession sqlSession = this.sqlSessionFactory.openSession();
			List<Sharefile> sharefilecate = sqlSession.selectList("sharefileSpace.sharecent", magid);
			sqlSession.close();
			return sharefilecate;
		}

		public Categorie getcate(String fileandcateid) {
			final SqlSession sqlSession = this.sqlSessionFactory.openSession();
			Categorie cate = sqlSession.selectOne("cateSpace.findbyid", fileandcateid);
			sqlSession.close();
			return cate;
		}

		public NetFile getfile(String fid) {
			final SqlSession sqlSession = this.sqlSessionFactory.openSession();
			NetFile file = sqlSession.selectOne("fileSpace.getone", fid);
			sqlSession.close();
			return file;
		}
		/*取消分享*/
		public void cancelshare(Sharefile sharefile) {
			final SqlSession sqlSession = this.sqlSessionFactory.openSession();
			sqlSession.delete("sharefileSpace.cancelshare", sharefile);
			String magid = sharefile.getMagid();
			List<Sharefile> sf = sqlSession.selectList("sharefileSpace.sharecentbyid", magid);
			if(sf.size() == 0){
				sqlSession.delete("shareSpace.cancelshare", magid);
			}
			
		}
	
	
}
