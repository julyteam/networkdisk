package com.july.networkdisk.web;

import com.july.networkdisk.service.ICateService;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.Categorie;
import com.july.networkdisk.vo.User;
import com.opensymphony.xwork2.ActionSupport;

public class CategorieAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private ICateService iCateService;
	private String categorieName;	//文件夹的名字
	private String categorieReid;	//文件夹的父级id
	private String categorieID;   	//文件夹的ID
	private String message;
	
	
	
	public void setCategorieID(String categorieID) {
		this.categorieID = categorieID;
	}
	public String getMessage() {
		return message;
	}
	public void setCategorieName(String categorieName) {
		this.categorieName = categorieName;
	}
	public void setCategorieReid(String categorieReid) {
		this.categorieReid = categorieReid;
	}
	public void setiCateService(ICateService iCateService) {
		this.iCateService = iCateService;
	}
	
	
	/**
	 * 新建文件夹
	 * @return
	 */
	public String bulidCate(){
		Categorie categorie = new Categorie();
		User user = CommonUtil.getSessionUser();
		categorie.setId(CommonUtil.createUUID());
		categorie.setName(categorieName);
		if("".equals(categorieReid))
		{
			categorie.setReid(null);
			
		}else {
			
			categorie.setReid(categorieReid);
		}
		categorie.setUid(user.getId());
		categorie.setState(0);
		iCateService.save(categorie);
		message="新建文件夹成功！";
		return "json";
	}
	
	/**
	 * 把文件夹放入回收站
	 * @return
	 */
	public String layCateRecycle(){
		if(categorieID != null){
			iCateService.recyleCate(categorieID, 0);
		}
		message="文件夹成功放入回收站";
		return "json";
	}
	/**
	 * 还原文件夹
	 * @return
	 */
	public String restoreCate(){
		if(categorieID != null){
			iCateService.recyleCate(categorieID, 1);
		}
		message="文件夹成功放入回收站";
		return "json";
	}
	
	/**
	 * 删除文件夹
	 * @return
	 */
	public String deleteCate(){
		if(categorieID != null){
			iCateService.deleteCate(categorieID);
		}
		message="文件夹成功删除";
		return "json";
	}
}
