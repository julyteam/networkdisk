package com.july.networkdisk.web;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.io.PrintWriter;
import java.util.List;
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

	 /*MD5加密密码*/
		public static String getMD5(String str) throws Exception {
			 // 生成一个MD5加密计算摘要
			 MessageDigest md = MessageDigest.getInstance("MD5");
			 // 计算md5函数
			 md.update(str.getBytes());
			 // digest()最后确定返回md5 hash值，返回值为8为字符串。因为md5 hash值是16位的hex值，实际上就是8位的字符
			 // BigInteger函数则将8位的字符串转换成16位hex值，用字符串来表示；得到字符串形式的hash值
			 return new BigInteger(1, md.digest()).toString(16);
		}


   
  /*  用户登陆*/
    public String login() throws Exception{
    	System.out.println("~~~~~~~~~~~~~~~~~~");
    	String password = getMD5(this.user.getPassWord());
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
    /*用户个人资料修改*/
    public String update() throws Exception{
    	this.iUserService.update(this.user);
    	User u = CommonUtil.getSessionUser();
    	u.setEmail(this.user.getEmail());
    	u.setPhone(this.user.getPhone());
    	u.setSex(this.user.getSex());
    	u.setAbout(this.user.getAbout());
    	session.setAttribute("user", u);
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
		PrintWriter out = response.getWriter();
		User userPhone=this.iUserService.selectUserByTel(user.getPhone());
		if(userPhone!=null)
		{
			out.print(false);
		}
		else
		{
			out.print(true);
		}
		return null;
    }
    /*前台验证邮箱*/
    public String checkEmail() throws Exception
    {
    	HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		User userEmail=this.iUserService.selectUserByEmail(user.getEmail());
		if(userEmail!=null)
		{
			out.print(false);
		}
		else
		{
			out.print(true);
		}
	
		return null;
    }
   /*密码修改*/
    public String updatePassword()throws Exception
    {
    	String password = getMD5(this.user.getPassWord());
    	this.user.setPassWord(password);
    	this.iUserService.updatePassword(user);
    	User u = CommonUtil.getSessionUser();
    	u.setPassWord(password);
    	session.setAttribute("user", u);
    	
    	return SUCCESS;
    }


}
