package com.july.networkdisk.service;

import java.util.List;

import com.july.networkdisk.vo.Categorie;
import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.Share;
import com.july.networkdisk.vo.Sharefile;

public interface ISharefileService extends IBaseService<Sharefile>{

	void addshare(Share share);
	
	void sharefile(Sharefile sharefile, String[] s_type);

	List<Sharefile> sharecent(Sharefile sharefile);

	void preservation(String id, String[] fid);

	void preservationcate(String id, String[] cidlist);
	
	int checkfile(String[] fid, String[] fname, int flag, String uid);

	Categorie getcate(String fileandcateid);

	NetFile getfile(String fileandcateid);

	List<Categorie> getcatenext(String cateid);

	List<NetFile> getcatenextfile(String cateid);

	int checkcate(String[] cidlist, String[] cnamelist, int cateflag, String id);




	
}
