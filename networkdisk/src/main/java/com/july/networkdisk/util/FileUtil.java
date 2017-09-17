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
		String[] str = fileName.split("\\.");
		netFile.setName(fileName); // 截取文件名
	
		if(str[1] == null){
			netFile.setType((fileContentType.split("/"))[0]); // 截取文件类型
		}
		netFile.setType(str[1]);
		netFile.setSize(file.length());
		OutputStream os = null;
		InputStream is = null;

		is = new FileInputStream(file);
		String path = "D:" + File.separatorChar + "networkdiskFile"
				+ File.separatorChar + user.getName();
		File newFile = new File(path);// 构造一个存储路径 D：\networkdiskFile\用户名

		if (!newFile.exists()) {
			newFile.mkdirs();
		}
		os = new FileOutputStream(path+File.separatorChar+fileName);

		byte[] buf = new byte[1024];
		int length = 0;
		while ((length = is.read(buf)) > 0) {
			os.write(buf, 0, length);
		}

		os.close();
		is.close();
		
		netFile.setPath(path+File.separatorChar+fileName);
		netFile.setDownum(0);
		netFile.setDeletesign(0);
		

		return netFile;
	}
}
