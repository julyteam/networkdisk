package com.july.networkdisk.service.impl;

import com.july.networkdisk.dao.CategorieDao;
import com.july.networkdisk.service.ICateService;
import com.july.networkdisk.vo.Categorie;

/**
 *@author Ling_jui;
 *@version 2017年9月18日
 *@type CataServiceImpl
 */
public class CataServiceImpl implements ICateService{

	private CategorieDao cateDao;
	
	public CategorieDao getCateDao() {
		return cateDao;
	}

	public void setCateDao(CategorieDao cateDao) {
		this.cateDao = cateDao;
	}

	public void save(Categorie cate){
		cateDao.save(cate);
	}
}
