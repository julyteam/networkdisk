package com.july.networkdisk.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.User;

public class FileUtil {
	/**
	 * 把上传的文件和用户包装到netFile,
	 * 
	 * @param file
	 * @param fileName
	 * @param fileContentType
	 * @param netFile
	 * @return
	 */
	public static NetFile layFile(File file, String fileName,
			String fileContentType, User user, NetFile netFile)
			throws Exception {
		netFile.setId(CommonUtil.createUUID());
		netFile.setUid(user.getId());
		netFile.setName(fileName); // 截取文件名
	
		String str = fileName.substring(fileName.lastIndexOf(".")+1);
		if(str == null){
			netFile.setType((fileContentType.split("/"))[0]); // 截取文件类型
		}
		netFile.setType(str);
		netFile.setSize(file.length());
		OutputStream os = null;
		InputStream is = null;

		is = new FileInputStream(file);
		String folderpath = "/home/julyteam" + File.separatorChar + "networkdiskFile"
				+ File.separatorChar + user.getName();
		File newFile = new File(folderpath);// 构造一个存储路径 D：\networkdiskFile\用户名

		if (!newFile.exists()) {
			newFile.mkdirs();
		}
		String turePath = folderpath+File.separatorChar+netFile.getId()+"."+netFile.getType(); //真实的文件存储路径
		os = new FileOutputStream(turePath);

		byte[] buf = new byte[1024];
		int length = 0;
		while ((length = is.read(buf)) > 0) {
			os.write(buf, 0, length);
		}

		os.close();
		is.close();
		
		netFile.setPath(turePath);
		netFile.setDownum(0);
		netFile.setDeletesign(0);
		

		return netFile;
	}
	
	/**
	 * 文件下载
	 */
	public static InputStream downFile(String file_path)throws Exception{
		File file = new File(file_path);
		if(!file.exists()){
			return null;
		}
		InputStream inputStream = new FileInputStream(file);
		return inputStream;
	}
	/**
	 * 删除文件
	 * @param file_path
	 * @return
	 * @throws Exception
	 */
	public static void deleteFile(String file_path) throws Exception{
		File newFile = new File(file_path);
		if(newFile.exists()){
			newFile.delete();
		}
	}
}
