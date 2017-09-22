package com.july.networkdisk.dao;

import java.util.List;

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
	/*查找消息公告*/
	public List<Notice> getAll(){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
        List<Notice> list = sqlSession.selectList("noticeSpace.getAll");
        sqlSession.close();
        return list;
	}

}
