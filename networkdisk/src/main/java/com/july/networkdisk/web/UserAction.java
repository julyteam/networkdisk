package com.july.networkdisk.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.*;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.util.SendEmailUtil;
import com.july.networkdisk.vo.*;
import com.july.networkdisk.service.*;

public class UserAction extends ActionSupport implements ModelDriven<User>
{
	
    private static final long serialVersionUID = 1L;
    private User user = new User();
    private File file;
    private IUserService iUserService;
    private Map<String, Object> map;  //用来接收查询的数据和返回到前台
    private String message;
    private String code;
    private String uid;
    private String magid;
    private String filecateid;
    HttpSession session = CommonUtil.createSession();
    HttpServletRequest request=ServletActionContext.getRequest();
    HttpServletResponse response=ServletActionContext.getResponse();
    
    public void setCode(String code) {
		this.code = code;
	}
    public String getCode() {
		return code;
	}
    public String getMessage() {
		return message;
	}
    public void setMessage(String message) {
		this.message = message;
	}

    public void setiUserService(final IUserService iUserService) {
        this.iUserService = iUserService;
    }
    
    public IUserService getiUserService() {
        return this.iUserService;
    }
    
    public void setUser(final User user) {
        this.user = user;
    }
    
    public User getUser() {
        return this.user;
    }
    public User getModel() {
		
		return user;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public String execute() throws Exception {
        this.iUserService.save(this.user);
        return "success";
    }
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getMagid() {
		return magid;
	}
	public void setMagid(String magid) {
		this.magid = magid;
	}
	public String getFilecateid() {
		return filecateid;
	}
	public void setFilecateid(String filecateid) {
		this.filecateid = filecateid;
	}
	/*  用户登陆*/
    public String login() throws Exception{
    	Cookie cookie=null;
    	String ck=request.getParameter("check");
    	
    	String password = CommonUtil.getMD5(this.user.getPassWord());
    	String pass=user.getPassWord();
    	this.user.setPassWord(password);
    	User u = new User();
    	String em = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";  
        String ph = "^[1][34578]\\d{9}$";
        String str = this.user.getName();
        if(str.matches(em)){
        	this.user.setEmail(str);
        	u = this.iUserService.findOneByEm(this.user);
        }else if(str.matches(ph)){
        	this.user.setPhone(str);
        	u = this.iUserService.findOneByPhone(this.user);
        }else{
        	u = this.iUserService.findOne(this.user);
        }
    	session.setAttribute("user", u);
    	if(u == null){
    		this.setMessage("error");
    		return ERROR;
    	}else{
    		this.setMessage("yes");
    		if("on".equals(ck))
			{
				String username=URLEncoder.encode(user.getName(),"utf-8");
				 cookie=new Cookie("username",username);
				 cookie.setMaxAge(60*60);
				 response.addCookie(cookie);
				 cookie=new Cookie("password",pass);
				 cookie.setMaxAge(60*60);
				 response.addCookie(cookie);
				
			}
        	return SUCCESS;
    	}
    	
    }
    /*个人资料页面跳转*/
    public String percenter() throws Exception{
    	return SUCCESS;
    }
    public String goindex() throws Exception{
    	return SUCCESS;
    }
    /*用户个人资料修改*/
    public String update() throws Exception{
    	User u = CommonUtil.getSessionUser();
    	this.user.setId(u.getId());
    	this.iUserService.update(this.user);
    	u.setEmail(this.user.getEmail());
    	u.setPhone(this.user.getPhone());
    	u.setSex(this.user.getSex());
    	u.setAbout(this.user.getAbout());
    	
    	return SUCCESS;
    }
    /*修改验证*/
    public void validateUpdate() {
    	String email = this.user.getEmail();
    	String phone = this.user.getPhone();
    	String about = this.user.getAbout();
    	int sex = this.user.getSex();
    	int flag = 0;
    	for(int i=0;i<email.length();i++){
    		if(email.charAt(i) == '@'){
    			flag=1;
    		}
    	}
    	if(flag==0){
    		this.addActionError("邮箱不合法！");
    	}
    	if(phone.length()!=11){
    		this.addActionError("手机号不合法！");
    	}
    	if(sex!=1 && sex!=0){
    		this.addActionError("性别不合法！");
    	}
    	if(about.length()>20){
    		this.addActionError("签名不得超过20个字符！");
    	}
    }
    
   /* 头像*/
    public String photoup() throws Exception{
    	InputStream in = new FileInputStream(file);	
    	User u = CommonUtil.getSessionUser();
    	byte[] photo = new byte[in.available()];
    	in.read(photo);
    	in.close();
    	u.setPhoto(photo);
    	this.iUserService.photoup(u);

    	return SUCCESS;
    }
    /**
     * 用户头像查找
     * @return
     * @throws Exception
     */
    public String showphoto() throws Exception{
	   User user = iUserService.get(uid);
	   ServletOutputStream out = null;
	   response.setContentType("multipart/form-data");
	   out = response.getOutputStream();
	   out.write(user.getPhoto());
	   out.flush();
	   out.close();
	   return null;
   }
    
    
    /*    管理员登陆*/
    public String findOne() throws Exception{
    	User user = this.iUserService.findOne(this.user);
    	if(user == null){
    		return ERROR;
    	}
    	if(user.getIsadmin()==1){
        	session.setAttribute("user", user);
        	return SUCCESS;
    	}else{
    		return ERROR;
    	}
    	
    }
/*    查找所有用户信息*/
    public String getAll()throws Exception{
    	List<User> users = this.iUserService.getAll();
    	//System.out.println(users.get(0).getName());
    	session.setAttribute("users", users);
    	return SUCCESS;
    }
   /* @Override
    public void validate() {
    	String name = this.user.getName();
    	if(name.length()<10){
    		this.addActionError("用户名不合法！");
    	}
    }*/
    
 /*    前台验证用户名注册*/
    public String checkUserName() throws Exception
    {
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		User userName=this.iUserService.selectUserByName(user.getName());
		if(userName!=null)
		{
			out.print(false);
		}
		else
		{
			out.print(true);
		}
		out.close();
		return null;
	
    }
      /*  前台验证手机号*/
    public String checkPhone() throws Exception
    {
		response.setContentType("text/json; charset=UTF-8");
		User userPhone = null;
		PrintWriter out = response.getWriter();
		User u = CommonUtil.getSessionUser();
		if(u == null){
			userPhone=this.iUserService.selectUserByTel(user.getPhone());
			if(userPhone!=null)
			{
				out.print(false);
			}
			else
			{
				out.print(true);
			}
		}else{
			if(u.getPhone().equals(this.user.getPhone())){
				out.print(true);
			}else{
				userPhone=this.iUserService.selectUserByTel(user.getPhone());
				if(userPhone!=null)
				{
					out.print(false);
				}
				else
				{
					out.print(true);
				}
			}
		}
		out.close();
		return null;
    }
        /*前台验证邮箱*/
    public String checkEmail() throws Exception
    {
		response.setContentType("text/json; charset=UTF-8");
		User userEmail;
		PrintWriter out = response.getWriter();
		User u = CommonUtil.getSessionUser();
		if(u == null){
			userEmail=this.iUserService.selectUserByEmail(user.getEmail());
			if(userEmail!=null)
			{
				out.print(false);
			}
			else
			{
				out.print(true);
			}
		}else{
			if(u.getEmail().equals(this.user.getEmail())){
				out.print(true);
			}else{
				userEmail=this.iUserService.selectUserByEmail(user.getEmail());
				if(userEmail!=null)
				{
					out.print(false);
				}
				else
				{
					out.print(true);
				}
			}
		}
		out.close();
		return null;
    }
     /**
     * 发送邮件
     * @throws Exception
     */
    
    public void sendEmail(){
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			String vcode= SendEmailUtil.createRandomVcode();
			SendEmailUtil.sendEmail(user.getEmail(), vcode);
			session.setAttribute("vcode", vcode);
			out.print(true);
		}catch(Exception e){
			out.print(false);
		}finally{
			out.flush();
			out.close();
		}
    	
    }
    
    /**
     *验证邮箱 验证码
     * @throws Exception 
     */
    public void verCode() throws Exception{
    	String vcodeSession =(String)session.getAttribute("vcode");
    	response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
    	if(vcodeSession.equals(code)){
    		out.print(true);
    	}else {
			out.print(false);
		}
    }
    
    
    /*密码修改*/
    public String updatePassword()throws Exception
    {
    	String password = CommonUtil.getMD5(this.user.getPassWord());
    	User u = CommonUtil.getSessionUser();
    	this.user.setId(u.getId());
    	this.user.setPassWord(password);
    	this.iUserService.updatePassword(user);
    	u.setPassWord(password);
    	
    	
    	return SUCCESS;
    }
    /*登出*/
    public String logout() throws Exception{
    	session.invalidate();
    	return SUCCESS;
    }
    
    	/*分享页面跳转*/
    public String gomyshare(){
    	return SUCCESS;
    }
    
   /* 我的分享*/
    public String myshare() throws Exception{
    	map = new HashMap<String, Object>();
    	List<Share> sharelist = this.iUserService.getmyshare(uid);
    	List<NetFile> filelist = new ArrayList<NetFile>();
    	List<Categorie> catelist = new ArrayList<Categorie>();
    	for(int i=0;i<sharelist.size();i++){
    		List<Sharefile> sflist = this.iUserService.getsharefile(sharelist.get(i).getMagid());
    		for(int j=0;j<sflist.size();j++){
    			if(sflist.get(j).getIscate() == 1){
    				Categorie cate = this.iUserService.getcate(sflist.get(j).getFileandcateid());
    				cate.setAddtime(sharelist.get(i).getStartTime());
    				cate.setState(sharelist.get(i).getRetain());
    				cate.setReid(sharelist.get(i).getMagid());
    				catelist.add(cate);
    			}else{
    				NetFile file = this.iUserService.getfile(sflist.get(j).getFileandcateid());
    				file.setAddtime(sharelist.get(i).getStartTime());
    				file.setDeletesign(sharelist.get(i).getRetain());
    				file.setCatid(sharelist.get(i).getMagid());
    				filelist.add(file);
    			}
    		}
    	}
    	
    	map.put("catelist", catelist);
    	map.put("filelist", filelist);
    	return "json";
    }
    /*取消分享*/
    public String cancelshare() throws Exception{
    	HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
    	Sharefile sharefile = new Sharefile();
    	String[] magidlist = magid.split(",");
    	String[] fcidlist = filecateid.split(",");
    	for(int i=0;i<fcidlist.length;i++){
    		sharefile.setMagid(magidlist[i]);
    		sharefile.setFileandcateid(fcidlist[i]);
    		this.iUserService.cancelshare(sharefile);
    	}
    	out.print(1);
    	return null;
    }
   
    /*分享页面跳转*/
    public String goshare(){
    	return SUCCESS;
    }
    
    /*默认分享页面*/
    public String goshare_default(){
    	return SUCCESS;
    }
}
