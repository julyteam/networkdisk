package com.july.networkdisk.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.july.networkdisk.vo.Categorie;


public class CategorieDao extends BaseDao {
	
	/**
	 * 新建目录
	 * @param cate
	 */
	public void save(Categorie cate) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		sqlSession.insert("cateSpace.save", cate);
		sqlSession.close();
	}
	
	/**
	 * 查询所有目录
	 * @return
	 */
	public List<Categorie> findAllCateByUser(Map<String, Object> map) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<Categorie> list = sqlSession.selectList("cateSpace.findAllCateByUser",map);
		sqlSession.close();
		return list;
	}
	/**
	 * 根据ID查询一个文件夹，区分是否有deleteSign ，0 ，1；
	 * @return
	 */
	public Categorie get(String cate_id, Integer state) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cat_id", cate_id);
		map.put("cat_state", state);
		Categorie cate = sqlSession.selectOne("cateSpace.get", map);
		sqlSession.close();
		return cate;
	}

	
	
	
	/**
	 * 在回收站删除一个文件夹
	 * 在业务层需要处理关联
	 * @param cat_id
	 * @return
	 */
	public boolean deleteOne(String cat_id) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		int b = sqlSession.delete("cateSpace.deleteOneCate", cat_id);
		sqlSession.close();
		if (b > 0) {
			return true;
		}
		return false;
	}


	
	/**
	 * 根据文件夹cat_id 修改cat_name或者cat_reid或者cat_state
	 * @param map
	 * @return
	 */
	public boolean updateCate(String cate_id,Map<String, Object> map){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		map.put("cat_id", cate_id);
		int row =sqlSession.update("cateSpace.updateCate", map);
		sqlSession.close();
		if(row > 0)
		{
			return true;
		}
		return false;
	}
	/**
	 * 把一批文件放入回收站
	 * @return
	 */
	public boolean updateDeleteSingBatch(List file_ids){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		int row = sqlSession.delete("fileSpace.updateDeleteSingBatch", file_ids);
		sqlSession.close();
		if (row == file_ids.size()) {
			return true;
		}
		return false;
	}
}
