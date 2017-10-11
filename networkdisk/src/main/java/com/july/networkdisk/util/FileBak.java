package com.july.networkdisk.util;

import java.net.URI;
import java.net.URISyntaxException;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;


/**
 * 上传的文件备份
 * @author 柳培岳
 *
 */
public class FileBak implements Runnable {
	private String path;
	private FileSystem fileSystem;
	
	public FileBak(String path) throws Exception {
		this.path = path.replaceAll("\\\\", "/");
		String hdfspath = path.substring(2);
		URI uri = new URI("hdfs://s100:8020/user/ubuntu"+hdfspath);
        Configuration conf = new Configuration();
        fileSystem = FileSystem.get(uri, conf);
	}
	
	public void write() throws Exception{
		Path srcPath = new Path(path);  
        Path dstPath = new Path("/");  
        fileSystem.copyFromLocalFile(false, srcPath, dstPath);
        fileSystem.close();
		
		
		
	}
	
	public void read(){
		
	}
	
	public void run() {
		
	}
} 
