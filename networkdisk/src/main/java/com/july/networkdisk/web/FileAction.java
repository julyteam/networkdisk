package com.july.networkdisk.web;

import java.io.File;
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

	public String fileUpLoad() {
		if (file == null) {
			return ERROR;
		} else {
			ActionContext actionContext = ActionContext.getContext(); // 获取session
			Map session = actionContext.getSession();

			User user0 = new User();
			user0.setName("laozhu");
			user0.setId("1");
			session.put("user", user0);

			User user = (User) session.get("user");

			NetFile netFile = new NetFile();

			try {

				netFile = FileUtil.layFile(file, fileFileName, fileContentType,user, netFile);
				fileService.save(netFile);
			} catch (Exception e) {
				return ERROR;
			}

		}
		return SUCCESS;
	}

}
