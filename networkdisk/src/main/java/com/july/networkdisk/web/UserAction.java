package com.july.networkdisk.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.*;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.*;
import com.july.networkdisk.service.*;

public class UserAction extends ActionSupport implements ModelDriven<User>
{
	
    private static final long serialVersionUID = 1L;
    private User user = new User();
    private File file;
    private IUserService iUserService;
    private String message;
    HttpSession session = CommonUtil.createSession();
    
    
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
	
	


   
	/*  用户登陆*/
    public String login() throws Exception{
    	System.out.println("~~~~~~~~~~~~~~~~~~");
    	String password = CommonUtil.getMD5(this.user.getPassWord());
    	this.user.setPassWord(password);
    	User user = this.iUserService.findOne(this.user);
    	session.setAttribute("user", user);
    	if(user == null){
    		this.setMessage("用户名或者密码错误！");
    		return ERROR;
    	}else{
        	return SUCCESS;
    	}
    	
    }
    /*个人资料页面跳转*/
    public String percenter() throws Exception{
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
    	User u = CommonUtil.getSessionUser();
	   User user = iUserService.get(u.getId());
	   HttpServletResponse response = null;
	   ServletOutputStream out = null;
	   response = ServletActionContext.getResponse();
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
    	HttpServletResponse response = ServletActionContext.getResponse();
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
		return null;
	
    }
      /*  前台验证手机号*/
    public String checkPhone() throws Exception
    {
    	HttpServletResponse response = ServletActionContext.getResponse();
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
		return null;
    }
        /*前台验证邮箱*/
    public String checkEmail() throws Exception
    {
    	HttpServletResponse response = ServletActionContext.getResponse();
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
		return null;
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

}
