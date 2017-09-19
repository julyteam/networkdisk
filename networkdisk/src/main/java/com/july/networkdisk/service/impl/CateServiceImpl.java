package com.july.networkdisk.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.july.networkdisk.dao.CategorieDao;
import com.july.networkdisk.service.ICateService;
import com.july.networkdisk.vo.Categorie;

/**
 *@author Ling_jui;
 *@version 2017年9月18日
 *@type CataServiceImpl
 */
public class CateServiceImpl implements ICateService{

	private CategorieDao cateDao;
	
	public CategorieDao getCateDao() {
		return cateDao;
	}

	public void setCateDao(CategorieDao cateDao) {
		this.cateDao = cateDao;
	}
	/**
	 * 新建文件夹
	 */
	public void save(Categorie cate) {
		cateDao.save(cate);
	}

	/**
	 * 重命名 或者 移动 文件夹
	 */
	public void update(Categorie cate) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cat_name", cate.getName());
		map.put("cat_reid", cate.getReid());
		cateDao.updateCate(cate.getId(), map);
	}
	/**
	 * 查询所有的文件
	 * @param cat_uid
	 * @param cat_reid
	 * @param cat_state
	 * @return
	 */
	public List<Categorie> findAllCate(String cat_uid,Map<String, Object> map){
		map.put("cat_uid", cat_uid);
		cateDao.findAllCateByUser(map);
		return null;
	}
	
	public Categorie get(String p0) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public boolean delete(String p0) {
		// TODO Auto-generated method stub
		return false;
	}
}
