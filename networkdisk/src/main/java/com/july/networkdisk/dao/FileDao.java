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
	 * 查询所有文件
	 * 
	 * @return
	 */
	public List<NetFile> findAllByUser(Map<String, Object> map) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<NetFile> list = sqlSession.selectList("fileSpace.findAllByUser",map);
		sqlSession.close();
		return list;
	}
	/**
	 * 根据ID查询一个文件，区分是否有deleteSign ，0 ，1；
	 * @return
	 */
	public NetFile get(String netFile_id, Integer deleteSign) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("file_id", netFile_id);
		map.put("file_deletesign", deleteSign);
		NetFile netFile = sqlSession.selectOne("fileSpace.get", map);
		sqlSession.close();
		return netFile;
	}

	/**
	 * 在回收站删除一个文件
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
	 * 在回收站删除一批文件
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
	public boolean updateFile(String netFile_id,Map<String, Object> map){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		map.put("file_id", netFile_id);
		int row =sqlSession.update("fileSpace.updateFile", map);
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
