package com.july.networkdisk.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.july.networkdisk.dao.CategorieDao;
import com.july.networkdisk.service.ICateService;
import com.july.networkdisk.service.IFileService;
import com.july.networkdisk.vo.Categorie;
import com.july.networkdisk.vo.NetFile;


public class CateServiceImpl implements ICateService{

	private CategorieDao cateDao;
	private IFileService iFileService;
	
	
	public IFileService getiFileService() {
		return iFileService;
	}
	public void setiFileService(IFileService iFileService) {
		this.iFileService = iFileService;
	}
	
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
	 * 重命名 文件夹
	 */
	public void update(Categorie cate) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cat_name", cate.getName());
		cateDao.updateCate(cate.getId(), map);
	}
	
	/**
	 * 移动文件夹
	 * @param cat_id
	 * @param cat_reid
	 */
	public boolean updateCatereid(String cat_id,String cat_reid){
		return cateDao.updateCatereid(cat_id, cat_reid);
	}
	
	
	/**
	 * 根据用户名，所属文件夹，是否在回收站   查询所有的文件夹
	 * @param cat_uid
	 * @param cat_reid
	 * @param cat_state
	 * @return
	 */
	public List<Categorie> findAllCate(String cat_uid,Map<String, Object> map){
		map.put("cat_uid", cat_uid);
		return cateDao.findAllCateByUser(map);
	}
	

	
	/**
	 * 把文件夹放入或放出回收站
	 * @param cat_id
	 * @return
	 */
	public boolean recyleCate(String cat_id,Integer state){
		
		List <String>  listfile = iFileService.findAllByCatId(cat_id, state);
		if(listfile != null && listfile.size() !=0){
			if(state.equals(0)){
				iFileService.layBatchRecyle(listfile,1);
			}else {
				iFileService.layBatchRecyle(listfile,0);
			}
		}
		List<String> listcate = cateDao.findCateByCatereid(cat_id, state);
		if( listcate != null && listcate.size() !=0 ){
			for (String newcat_id : listcate) {
				recyleCate(newcat_id, state);
			}
		}
		Map<String, Object> map = new HashMap<String, Object>();
		if(state.equals(0)){
			map.put("cat_state",1);
		}else {
			map.put("cat_state",0);
		}
		cateDao.updateCate(cat_id, map);
		return true;
	}
	
	/**
	 * 删除文件夹
	 */
	public boolean deleteCate(String cat_id) {
		int state = 1;
		List <String>  listfile = iFileService.findAllByCatId(cat_id, state);
		if(listfile != null && listfile.size() !=0){
			iFileService.deleteBatch(listfile);
		}
		List<String> listcate = cateDao.findCateByCatereid(cat_id, state);
		if( listcate != null && listcate.size() !=0 ){
			for (String newcat_id : listcate) {
				deleteCate(newcat_id);
			}
		}
		cateDao.deleteOne(cat_id);
		return true;
	}
	
	/**
	 * 显示用户回收站中的文件和文件夹
	 * @param cat_uid
	 * @return
	 */
	public Map<String, Object> showRecycleCate(String cat_uid) {
		List<Categorie> listCategories = new ArrayList<Categorie>();
		List<Categorie> listCate= cateDao.showRecycleCate(cat_uid);
		for (Categorie categorie : listCate) {
			if(categorie.getReid() == null){
				listCategories.add(categorie);
			}else {
				Categorie cate =cateDao.get(categorie.getReid(),0);
				if(cate!=null){
					listCategories.add(categorie);
				}
			}
		}
		
		List<NetFile> listFiles = new ArrayList<NetFile>();
		List<NetFile> list =iFileService.showRecycleFile(cat_uid);
		for (NetFile file : list) {
			if(file.getCatid() == null){
				listFiles.add(file);
			}else {
				Categorie cate =cateDao.get(file.getCatid(),0);
				if(cate != null){
					listFiles.add(file);
				}
			}
		}
		HashMap<String, Object> recylceMap = new HashMap<String, Object>();
		recylceMap.put("listCategories", listCategories);
		recylceMap.put("listFiles", listFiles);
		return recylceMap;
	}
	
	public Categorie get(String p0) {
		return null;
	}
	
	public boolean delete(String p0) {
		return false;
	}
	
}
