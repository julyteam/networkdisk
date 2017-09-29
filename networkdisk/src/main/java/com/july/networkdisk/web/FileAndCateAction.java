package com.july.networkdisk.web;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import com.july.networkdisk.service.ICateService;
import com.july.networkdisk.service.IFileService;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.Categorie;
import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;
import com.opensymphony.xwork2.ActionSupport;

public class FileAndCateAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private IFileService iFileService;
	private ICateService iCateService;
	private Map<String, Object> map; // 用来接收查询的数据和返回到前台
	private String categorie_id; // 文件夹id
	private Integer recycleflag; // 回收站标志
	private String file_id; // 文件id
	private String message; // 返回消息
	private String filelist;  //文件id数组
	private String catelist;	//文件夹id数组
	private String rename;		//重命名
	private String refileid;   //重命名文件id
	private String recategorieid; //重命名文件夹id
	
	public void setRefileid(String refileid) {
		this.refileid = refileid;
	}
	public void setRecategorieid(String recategorieid) {
		this.recategorieid = recategorieid;
	}
	public void setRename(String rename) {
		this.rename = rename;
	}
	public void setFilelist(String filelist) {
		this.filelist = filelist;
	}
	public void setCatelist(String catelist) {
		this.catelist = catelist;
	}
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
	 * 
	 * @return
	 */
	public String showFileAndCate() {
		map = new HashMap<String, Object>();
		User user = CommonUtil.getSessionUser();
		if (!"".equals(categorie_id)) {
			map.put("file_catid", categorie_id); // 判断所在的目录
			map.put("cat_reid", categorie_id);
		} else {
			map.put("file_catid", null); // 判断所在的目录
			map.put("cat_reid", null);
		}
		map.put("file_deletesign", recycleflag); // 判断是否在回收站；
		map.put("cat_state", recycleflag);
		List<NetFile> listFiles = iFileService.findAllByUser(user.getId(), map);
		List<Categorie> listCategories = iCateService.findAllCate(user.getId(),
				map);
		map.put("listFiles", listFiles);
		map.put("listCategories", listCategories);
		return "json";
	}

	/**
	 * 把文件放入回收站
	 * 
	 * @return
	 */
	public String layFileRecyle() {
		boolean flag = iFileService.layRecyle(file_id, 1);
		if (flag == true) {
			message = "文件已经放入回收站！";
		} else {
			message = "删除文件失败！";
		}
		return "json";
	}

	/**
	 * 显示回收站中的文件和文件夹
	 * 
	 * @return
	 */
	public String showRecycle() {
		User user = CommonUtil.getSessionUser();
		map = iCateService.showRecycleCate(user.getId());
		return "json";
	}
	
	/**
	 * 还原文件
	 * @return
	 */
	public String restoreFile(){
		boolean flag= iFileService.layRecyle(file_id, 0);
		if(flag == true){
			message="还原文件成功！";
		}
		else {
			message="还原文件失败！";
		}
		return "json";
	}
	
	/**
	 * 还原文件和文件夹
	 * @return
	 */
	public String restoreCateandfile(){
		if(!"".equals(filelist)){
			String[] fileids= filelist.split(",");
			List<String> files = Arrays.asList(fileids);
			iFileService.layBatchRecyle(files, 0);
		}
		if(!"".equals(catelist)){
			String[] cateids = catelist.split(",");
			for (String cateid : cateids) {
			iCateService.recyleCate(cateid, 1);
		    }
		}
		message = "还原成功！";
		return "json";
	}
	
	/**
	 * 删除文件
	 * @return
	 */
	public String deleteFile(){
		boolean flag= iFileService.delete(file_id);
		if(flag == true){
			message="删除文件成功！";
		}
		else {
			message="删除文件失败！";
		}
		return "json";
	}
	
	/**
	 * 批量把文件和文件夹放入回收站
	 * @return
	 */
	public String batchdeletefileandcate(){
		if(!"".equals(filelist)){
			String[] fileids= filelist.split(",");
			List<String> files = Arrays.asList(fileids);
			iFileService.layBatchRecyle(files, 1);
		}
		if(!"".equals(catelist)){
			String[] cateids = catelist.split(",");
			for (String cateid : cateids) {
				iCateService.recyleCate(cateid, 0);
		    }
		}
		message = "放入回收站成功！";
		return "json";
	}
	
	/**
	 * 清空回收站
	 * @return
	 */
	public String emptyRecycle(){
		if(!"".equals(filelist)){
			String[] fileids= filelist.split(",");
			List<String> files = Arrays.asList(fileids);
			iFileService.deleteBatch(files);
		}
		if(!"".equals(catelist)){
			String[] cateids = catelist.split(",");
			for (String cateid : cateids) {
			iCateService.deleteCate(cateid);
		    }
		}
		message = "清空回收站成功！";
		return "json";
	}
	
	/**
	 * 重新命名
	 * @return
	 */
	public String reName(){
		if(!"undefined".equals(refileid) && !"".equals(refileid)){
			iFileService.rename(refileid, rename);
			
		}
		if(!"".equals(recategorieid) && !"undefined".equals(recategorieid)){
			iCateService.reName(recategorieid, rename);
			
		}
		message = "重命名成功！";
		return "json";
	}
}
