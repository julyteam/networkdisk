package com.july.networkdisk.dao;

import org.apache.ibatis.session.SqlSession;

import com.july.networkdisk.vo.Notice;


public class NoticeDao extends BaseDao{
	
    /*插入消息公告*/
	public void insert(Notice notice){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
        sqlSession.insert("noticeSpace.insert",notice);
        sqlSession.close();
	}
	/*删除消息公告*/
	public void delete(int id){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
        sqlSession.delete("noticeSpace.delete", id);
        sqlSession.close();
	}

}
