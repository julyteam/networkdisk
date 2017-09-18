package com.july.networkdisk.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.july.networkdisk.vo.NetFile;

public class FileDao extends BaseDao {
	/**
	 * 保存一个文件
	 * @param file
	 */
	public void save(NetFile file) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		sqlSession.insert("fileSpace.save", file);
		sqlSession.close();
	}
	/**
	 * 查询用户的所有文件
	 * @param userID
	 * @return
	 */
	public List<NetFile> findAllByUser(Map<String, String> map) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<NetFile> list = sqlSession.selectList("fileSpace.findAllByUser",map);
		sqlSession.close();
		return list;
	}
	/**
	 * 查询一个文件
	 * @param file_id
	 * @return
	 */
	public NetFile get(String file_id) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		NetFile netFile = sqlSession.selectOne("fileSpace.get", file_id);
		sqlSession.close();
		return netFile;
	}

	/**
	 * 删除一个文件
	 * 
	 * @param file_id
	 * @return
	 */
	public boolean deleteOne(String file_id) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		int b = sqlSession.delete("fileSpace.deleteOne", file_id);
		sqlSession.close();
		if (b > 0) {
			return true;
		}
		return false;
	}

	/**
	 * 删除一批文件
	 * 
	 * @param file_id
	 * @return
	 */
	public boolean deleteBatch(List file_ids) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		int row = sqlSession.delete("fileSpace.deleteBatch", file_ids);
		sqlSession.close();
		if (row == file_ids.size()) {
			return true;
		}
		return false;
	}
	
	
	/**
	 * 根据文件file_id 修改file_name或者file_catid或者file_downum或者file_deletesign
	 * @param map
	 * @return
	 */
	public boolean updateFile(Map<String, String> map){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		int row =sqlSession.update("fileSpace.updateFileName", map);
		sqlSession.close();
		if(row > 0)
		{
			return true;
		}
		return false;
	}

}
