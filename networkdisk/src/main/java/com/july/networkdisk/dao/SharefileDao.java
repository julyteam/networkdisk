package com.july.networkdisk.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.Categorie;
import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.Share;
import com.july.networkdisk.vo.Sharefile;


public class SharefileDao extends BaseDao{
	
	public void addshare(Share share) {
		 final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		 sqlSession.insert("shareSpace.share", share);
		
	}
	/*分享文件*/
	public void sharefile(Sharefile sharefile, String[] s_type) {
		 final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		 for(int i=0;i<s_type.length;i++){
			 sharefile.setId(CommonUtil.createUUID());
			 sharefile.setFileandcateid(s_type[i]);
			 sqlSession.insert("sharefileSpace.sharefile", sharefile);
		 }
	     sqlSession.close();
	}
	/*分享的文件*/
	public List<Sharefile> sharecent(Sharefile sharefile) {
		 final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		 List<Sharefile> sf = sqlSession.selectList("sharefileSpace.sharecent", sharefile);
		/* List<NetFile> file = new ArrayList<NetFile>();
		 
		 for(int i=0;i<sf.size();i++){
			 String fid = sf.get(i).getFileandcateid();
			 int iscate = sf.get(i).getIscate();
			 if(iscate == 1){
				 
			 }
			 NetFile f = sqlSession.selectOne("fileSpace.getone", fid);
			 file.add(f);
		 }*/
		 sqlSession.close();
		 return sf;
	}
	/*根据id查询文件夹*/
	public Categorie getcate(String fileandcateid) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		Categorie cate = sqlSession.selectOne("cateSpace.findbyid", fileandcateid);
		return cate;
	}
	/*查找文件夹的下层文件夹*/
	public List<Categorie> getcatenext(String cateid) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<Categorie> cate = sqlSession.selectList("cateSpace.getcatenext", cateid);
		return cate;
	}
	/*查找文件夹的下层文件*/
	public List<NetFile> getcatenextfile(String cateid) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<NetFile> filelist = sqlSession.selectList("fileSpace.getcatenextfile",cateid);
		return filelist;
	}
	/*根据id查询文件*/
	public NetFile getfile(String fid) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		NetFile file = sqlSession.selectOne("fileSpace.getone", fid);
		return file;
	}
	/*保存分享的文件*/
	public void preservation(String uid, String[] fid) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		for(int i=0;i<fid.length;i++){
			NetFile f = sqlSession.selectOne("fileSpace.getone", fid[i]);
			f.setId(CommonUtil.createUUID());
			f.setUid(uid);
			sqlSession.insert("fileSpace.save", f);
		}
		sqlSession.close();
	}
	/*保存分享的文件夹*/
	public void preservationcate(String uid, String[] cidlist) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		for(int i=0;i<cidlist.length;i++){
			Categorie cate = sqlSession.selectOne("cateSpace.findbyid", cidlist[i]);
			String cateid = cate.getId();
			cate.setId(CommonUtil.createUUID());
			cate.setUid(uid);
			sqlSession.insert("cateSpace.save", cate);
			String reid = cate.getId();
			digui(cateid,reid,uid);
		}
		sqlSession.close();
	}
	public void digui(String cateid,String reid,String uid){
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<Categorie> catelist = sqlSession.selectList("cateSpace.getcatenext",cateid);
		List<NetFile> filelist = sqlSession.selectList("fileSpace.getcatenextfile",cateid);
		if(filelist != null){
			for(int i=0;i<filelist.size();i++){
				NetFile file = sqlSession.selectOne("fileSpace.getone", filelist.get(i).getId());
				file.setId(CommonUtil.createUUID());
				file.setUid(uid);
				file.setCatid(reid);
				sqlSession.insert("fileSpace.save", file);
			}
		}
		for(int i=0;i<catelist.size();i++){
			Categorie cate = sqlSession.selectOne("cateSpace.findbyid", catelist.get(i).getId());
			String cid = cate.getId();
			cate.setId(CommonUtil.createUUID());
			cate.setUid(uid);
			cate.setReid(reid);
			String rid = cate.getId();
			sqlSession.insert("cateSpace.save", cate);
			digui(cid,rid,uid);
		}
	}
	
	
	
	/*检查文件是否以存在*/
	public int checkfile(String[] fid, String[] fname, int flag, String uid) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<NetFile> f = sqlSession.selectList("fileSpace.getlistbyuid", uid);
		for(int i=0;i<f.size();i++){
			for(int j=0;j<fname.length;j++){
				if(fname[j].equals(f.get(i).getName())){
					flag = 0;
				}
			}
		}
		return flag;
	}
	
	/*检查文件夹是否以存在*/
	public int checkcate(String[] cidlist, String[] cnamelist, int cateflag,
			String id) {
		final SqlSession sqlSession = this.sqlSessionFactory.openSession();
		List<Categorie> cate = sqlSession.selectList("cateSpace.getlistbyuid", id);
		for(int i=0;i<cate.size();i++){
			for(int j=0;j<cnamelist.length;j++){
				if(cnamelist[j].equals(cate.get(i).getName())){
					cateflag = 0;
				}
			}
		}
		return cateflag;
	}
	
	
}
