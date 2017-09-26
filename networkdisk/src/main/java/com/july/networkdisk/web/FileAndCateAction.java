package com.july.networkdisk.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.omg.CORBA.PRIVATE_MEMBER;

import com.july.networkdisk.service.ICateService;
import com.july.networkdisk.service.IFileService;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.Categorie;
import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;
import com.opensymphony.xwork2.ActionSupport;

public class FileAndCateAction  extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	private IFileService iFileService;
	private ICateService iCateService; 
	private Map<String, Object> map;  //用来接收查询的数据和返回到前台
	private String categorie_id; //文件夹id
	private Integer recycleflag; //回收站标志
	private String file_id;		//文件id
	private String message;		//返回消息
	
	
	
	public String getMessage() {
		return message;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	public String getFile_id() {
		return file_id;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public void setCategorie_id(String categorie_id) {
		this.categorie_id = categorie_id;
	}
	public String getCategorie_id() {
		return categorie_id;
	}
	public void setRecycleflag(Integer recycleflag) {
		this.recycleflag = recycleflag;
	}
	public Integer getRecycleflag() {
		return recycleflag;
	}
	
	public void setiCateService(ICateService iCateService) {
		this.iCateService = iCateService;
	}
	public void setiFileService(IFileService iFileService) {
		this.iFileService = iFileService;
	}
	
	/**
	 * 显示用户文件和文件夹
	 * @return
	 */
	public String showFileAndCate() {
		map = new HashMap<String, Object>();
		User user = CommonUtil.getSessionUser();
		if(!"".equals(categorie_id))
		{
			map.put("file_catid", categorie_id);  //判断所在的目录
			map.put("cat_reid",categorie_id );
		}else{
			map.put("file_catid",null);  //判断所在的目录
			map.put("cat_reid",null);
		}
		map.put("file_deletesign", recycleflag);  //判断是否在回收站；
		map.put("cat_state", recycleflag);
		List<NetFile> listFiles = iFileService.findAllByUser(user.getId(), map);
		List<Categorie> listCategories = iCateService.findAllCate(user.getId(), map);
		map.put("listFiles", listFiles);
		map.put("listCategories", listCategories);
		return "json";
	}
	
	public String layFileRecyle(){
	   boolean flag=iFileService.layRecyle(file_id, 1);
		if(flag == true)
		{
			message="文件已经放入回收站！";
		}else {
			message="删除文件失败！";
		}
		return "json";
	}
	
 
}
