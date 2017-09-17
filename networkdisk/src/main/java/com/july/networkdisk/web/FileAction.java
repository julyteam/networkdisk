package com.july.networkdisk.web;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.july.networkdisk.service.IFileService;
import com.july.networkdisk.service.impl.FileServiceImpl;
import com.july.networkdisk.util.FileUtil;
import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FileAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private File file; // 上传的文件，对应表单的file的name属性
	private String fileFileName; // 文件名，xxxxFileName，xxx对应表单file的name属性
	private String fileContentType; // 文件类型，xxxContentType，xxx对应表单file的name属性
	private IFileService fileService;
	private List<NetFile> listFile; // 返回查询的文件列表

	ActionContext actionContext = ActionContext.getContext(); // 获取session
	Map session = actionContext.getSession();
	User user = (User) session.get("user");

	public List<NetFile> getListFile() {
		return listFile;
	}

	public void setListFile(List<NetFile> listFile) {
		this.listFile = listFile;
	}

	public IFileService getFileService() {
		return fileService;
	}

	public void setFileService(IFileService fileService) {
		this.fileService = fileService;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	/**
	 * 根据用户查找用户的所有文件
	 * 
	 * @return
	 */
	public String findAllByUser() {

		listFile = fileService.findAllByUser(user.getId());
		
		return SUCCESS;
	}

	/**
	 * 文件上传
	 * 
	 * @return
	 */
	public String fileUpLoad() {
		Map<String, Object> map = new HashMap<String, Object>();
		if (file == null) {
			map.put("message", "上传文件失败!");
		} else {
			NetFile netFile = new NetFile();
			try {
				
				User user = new User();
				user.setId("1");
				user.setName("laozhang");
				
				netFile = FileUtil.layFile(file, fileFileName, fileContentType,
						user, netFile);
				fileService.save(netFile);
			} catch (Exception e) {
				map.put("message", "上传文件失败!");
			}

		}
		map.put("message", "上传文件成功");
		actionContext.getContext().put("map", map);
		return "json";
	}

}
