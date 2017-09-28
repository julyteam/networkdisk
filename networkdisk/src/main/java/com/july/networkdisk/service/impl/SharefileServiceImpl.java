package com.july.networkdisk.service.impl;


import java.util.List;

import com.july.networkdisk.dao.SharefileDao;
import com.july.networkdisk.service.ISharefileService;
import com.july.networkdisk.vo.Categorie;
import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.Share;
import com.july.networkdisk.vo.Sharefile;

public class SharefileServiceImpl implements ISharefileService {
	private SharefileDao sharefileDao;
	
	public SharefileDao getSharefileDao() {
		return sharefileDao;
	}

	public void setSharefileDao(SharefileDao sharefileDao) {
		this.sharefileDao = sharefileDao;
	}

	public void save(Sharefile sharefile) {
	}

	public void update(Sharefile p0) {
		// TODO Auto-generated method stub
		
	}

	public boolean delete(String p0) {
		// TODO Auto-generated method stub
		return false;
	}

	public Sharefile get(String p0) {
		// TODO Auto-generated method stub
		return null;
	}

	public void addshare(Share share) {
		this.sharefileDao.addshare(share);
		
	}
	
	public void sharefile(Sharefile sharefile, String[] s_type) {
		this.sharefileDao.sharefile(sharefile, s_type);
	}

	public List<Sharefile> sharecent(Sharefile sharefile) {
		List<Sharefile> sf = this.sharefileDao.sharecent(sharefile);
		return sf;
	}

	public void preservation(String id, String[] fid) {
		this.sharefileDao.preservation(id,fid);
		
	}
	
	public void preservationcate(String id, String[] cidlist) {
		this.sharefileDao.preservationcate(id,cidlist);
	}
	
	public int checkfile(String[] fid, String[] fname, int flag, String uid) {
		flag = this.sharefileDao.checkfile(fid,fname,flag,uid);
		return flag;
	}

	public int checkcate(String[] cidlist, String[] cnamelist, int cateflag,
			String id) {
		return this.sharefileDao.checkcate(cidlist,cnamelist,cateflag,id);
	}
	
	public Categorie getcate(String fileandcateid) {
		Categorie cate = this.sharefileDao.getcate(fileandcateid);
		return cate;
	}

	public NetFile getfile(String fileandcateid) {
		NetFile file = this.sharefileDao.getfile(fileandcateid);
		return file;
	}

	public List<Categorie> getcatenext(String cateid) {
		return this.sharefileDao.getcatenext(cateid);
	}

	public List<NetFile> getcatenextfile(String cateid) {
		return this.sharefileDao.getcatenextfile(cateid);
	}



}
