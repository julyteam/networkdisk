package com.july.networkdisk.dao;

import org.apache.ibatis.session.SqlSession;

import com.july.networkdisk.vo.Categorie;

/**
 *@author Ling_jui;
 *@version 2017年9月18日
 *@type CategorieDao
 */
public class CategorieDao extends BaseDao {

	public void save(Categorie cate) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		sqlSession.insert("cateSpace.save", cate);
		sqlSession.close();
	}
}
