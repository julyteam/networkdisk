package com.july.networkdisk.web;

import com.july.networkdisk.service.ICateService;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.Categorie;
import com.opensymphony.xwork2.ActionSupport;

public class CategorieAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Categorie categorie;
	private ICateService iCateService;

	public void setiCateService(ICateService iCateService) {
		this.iCateService = iCateService;
	}
	public Categorie getCategorie() {
		return categorie;
	}
	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}
	
	public String bulidCate(){
		categorie.setId(CommonUtil.createUUID());
		categorie.setState(0);
		iCateService.save(categorie);
		return null;
	}
	
	
	
}
