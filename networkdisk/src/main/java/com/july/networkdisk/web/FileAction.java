package com.july.networkdisk.web;

import java.io.File;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.july.networkdisk.service.IFileService;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;
import com.opensymphony.xwork2.ActionSupport;

public class FileAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private File file; // 上传的文件，对应表单的file的name属性
	private String fileFileName; // 文件名，xxxxFileName，xxx对应表单file的name属性
	private String fileContentType; // 文件类型，xxxContentType，xxx对应表单file的name属性

	private IFileService fileService;
	private User user = CommonUtil.getSessionUser(); // 获取session中的User

	private List<NetFile> listFile; // 返回查询的文件列表到前台
	private String netFileID; // 得到下载文件的ID

	private String categorie_id; // 当前目录的id;
	private Integer recycleflag; // 判断是否在回收站

	public Integer getRecycleflag() {
		return recycleflag;
	}

	public void setRecycleflag(Integer recycleflag) {
		this.recycleflag = recycleflag;
	}

	public void setCategorie_id(String categorie_id) {
		this.categorie_id = categorie_id;
	}

	public String getCategorie_id() {
		return categorie_id;
	}

	public void setNetFileID(String netFileID) {
		this.netFileID = netFileID;
	}

	public String getNetFileID() {
		return netFileID;
	}

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
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("file_catid", categorie_id);  //判断所在的目录
		recycleflag = 0;   //用作测试
		map.put("file_deletesign", recycleflag);  //判断是否在回收站；
		listFile = fileService.findAllByUser(user.getId(),map);
		return SUCCESS;
	}

	/**
	 * 文件上传
	 * 
	 * @return
	 * @throws Exception
	 */
	public String fileUpLoad() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		String jsonString;
		PrintWriter out = response.getWriter();

		if (file == null) {
			jsonString = "上传文件失败！";
		} else {
			NetFile netFile = new NetFile();
			try {

				fileService.fileUpLoad(netFile, file, fileFileName,
						fileContentType, user);

			} catch (Exception e) {
				jsonString = "上传文件失败！";
				out.println(jsonString);
				out.flush();
				out.close();
			}

			jsonString = "上传文件成功！";
		}
		out.println(jsonString);
		out.flush();
		out.close();
		return null;
	}

	/**
	 * 文件下载
	 * 
	 * @return
	 * @throws Exception
	 */
	private InputStream in;

	public InputStream getDownloadFile() throws Exception {

		return in;
	}

	public String execute() throws Exception {
		in = fileService.fileDownLoad(netFileID);
		if (in == null) {
			return ERROR;
		}
		return SUCCESS;
	}

	/* 文件名称乱码 */
	public String getFileName() throws Exception {
		return new String(fileFileName.getBytes("GBK"), "Iso8859-1");

	}
}
