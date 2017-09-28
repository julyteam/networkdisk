package com.july.networkdisk.web;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.july.networkdisk.service.ISharefileService;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.Categorie;
import com.july.networkdisk.vo.NetFile;
import com.july.networkdisk.vo.Share;
import com.july.networkdisk.vo.Sharefile;
import com.july.networkdisk.vo.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class SharefileAction extends ActionSupport implements ModelDriven<Sharefile>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Sharefile sharefile = new Sharefile();
	private ISharefileService iSharefileService;
	private Map<String, Object> map;  //用来接收查询的数据和返回到前台
	private Categorie categorie;
	private Share share;
	private String fidlist;
	private String fnamelist;
	private String cateid;
	private String catename;
	private String uuid;
	private String url;
	HttpSession session = CommonUtil.createSession();
	
	
	public Sharefile getSharefile() {
		return sharefile;
	}

	public void setSharefile(Sharefile sharefile) {
		this.sharefile = sharefile;
	}
	
	public ISharefileService getiSharefileService() {
		return iSharefileService;
	}

	public void setiSharefileService(ISharefileService iSharefileService) {
		this.iSharefileService = iSharefileService;
	}

	public Sharefile getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public Share getShare() {
		return share;
	}

	public void setShare(Share share) {
		this.share = share;
	}
	
	public String getFidlist() {
		return fidlist;
	}

	public void setFidlist(String fidlist) {
		this.fidlist = fidlist;
	}
	
	public String getFnamelist() {
		return fnamelist;
	}

	public void setFnamelist(String fnamelist) {
		this.fnamelist = fnamelist;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	public String getCateid() {
		return cateid;
	}

	public void setCateid(String cateid) {
		this.cateid = cateid;
	}

	public Categorie getCategorie() {
		return categorie;
	}

	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	public String getCatename() {
		return catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	/*分享*/
	public String share() throws Exception{
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		uuid = uuid.substring(uuid.length()-36);
		String[] fid = fidlist.split(",");
		String[] cid = cateid.split(",");
		System.out.println(fid[0].length()+"~~~~~~");
		sharefile.setMagid(uuid);
		User u = CommonUtil.getSessionUser();
		Share share = new Share();
		share.setId(CommonUtil.createUUID());
		share.setUid(u.getId());
		share.setMagid(sharefile.getMagid());
		share.setRetain(15);
		if(fid[0].length() == 0){
			if(cid[0].length() == 0){
				out.print("0");
				
			}else{
				for(int i=0;i<cid.length;i++){
					cid[i] = cid[i].substring(cid[i].length()-4);
				}
				sharefile.setIscate(1);
				this.iSharefileService.sharefile(sharefile,cid);
				
			}
		}else{
			if(cid[0].length() == 0){
				for(int i=0;i<fid.length;i++){
					fid[i] = fid[i].substring(fid[i].length()-37);
				}
				sharefile.setIscate(0);
				this.iSharefileService.sharefile(sharefile,fid);
				
			}else{
				for(int i=0;i<cid.length;i++){
					cid[i] = cid[i].substring(cid[i].length()-4);
				}
				sharefile.setIscate(1);
				this.iSharefileService.sharefile(sharefile,cid);
				for(int i=0;i<fid.length;i++){
					fid[i] = fid[i].substring(fid[i].length()-37);
				}
				sharefile.setIscate(0);
				this.iSharefileService.sharefile(sharefile,fid);
				
			}
		}
		this.iSharefileService.addshare(share);
		out.print("1");
		out.flush();
		out.close();
		return null;
	}
	
	/*分享链接跳转*/
	public String shareurl() throws Exception{
		sharefile.setMagid(url);
		List<Sharefile> sflist = this.iSharefileService.sharecent(sharefile);
		List<Categorie> catelist = new ArrayList<Categorie>();
		List<NetFile> filelist = new ArrayList<NetFile>();
		for(int i=0;i<sflist.size();i++){
			if(sflist.get(i).getIscate() == 1){
				Categorie cate = this.iSharefileService.getcate(sflist.get(i).getFileandcateid());
				catelist.add(cate);
			}else{
				NetFile file = this.iSharefileService.getfile(sflist.get(i).getFileandcateid());
				filelist.add(file);
			}
		}
		session.setAttribute("catelist", catelist);
		session.setAttribute("filelist", filelist);

		return SUCCESS;
	}
	
	/*分享文件夹下一层*/
	public String showcatenext() throws Exception{
		map = new HashMap<String, Object>();
		List<Categorie> catelist = this.iSharefileService.getcatenext(cateid);
		List<NetFile> filelist = this.iSharefileService.getcatenextfile(cateid);
		map.put("catelist", catelist);
		map.put("filelist", filelist);
		return "json";
	}
	
	/*保存分享的文件和文件夹*/
	public String preservation() throws Exception{
		
		
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		User u = CommonUtil.getSessionUser();
		
		
		
		int fileflag = 1,cateflag = 1;
		String[] fid = fidlist.split(",");
		String[] fname = fnamelist.split(",");
		String[] cidlist = cateid.split(",");
		String[] cnamelist = catename.split(",");
		
		if(fid[0].length() == 0){
			if(cidlist[0].length() == 0){
				return null;
			}else{
				cateflag = this.iSharefileService.checkcate(cidlist,cnamelist,cateflag,u.getId());
				if(cateflag == 1){
					this.iSharefileService.preservationcate(u.getId(), cidlist);
					out.print(1);
				}else{
					out.print(0);
				}
			}
		}else{
			if(cidlist[0].length() == 0){
				fileflag = this.iSharefileService.checkfile(fid,fname,fileflag,u.getId());
				if(fileflag == 1){
					this.iSharefileService.preservation(u.getId(),fid);
					out.print(1);
				}else{
					out.print(0);
				}
			}else{
				fileflag = this.iSharefileService.checkfile(fid,fname,fileflag,u.getId());
				cateflag = this.iSharefileService.checkcate(cidlist,cnamelist,cateflag,u.getId());
				if(fileflag == 1){
					if(cateflag == 0){
						this.iSharefileService.preservation(u.getId(),fid);
						out.print(1);
					}else{
						this.iSharefileService.preservation(u.getId(),fid);
						this.iSharefileService.preservationcate(u.getId(), cidlist);
						out.print(1);
					}
				}else{
					if(cateflag == 0){
						out.print(0);
					}else{
						this.iSharefileService.preservationcate(u.getId(), cidlist);
						out.print(1);
					}
				}
			}
		}
		out.flush();
		out.close();
		return null;
	}
}
