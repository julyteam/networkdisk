package com.july.networkdisk.web;


import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import com.mysql.fabric.xmlrpc.base.Data;
import com.opensymphony.xwork2.*;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.*;
import com.july.networkdisk.service.*;

public class UserAction extends ActionSupport
{
    private static final long serialVersionUID = 1L;
    private User user;
    private IUserService iUserService;
    private String message;
    ActionContext actionContext = ActionContext.getContext();
	Map session = actionContext.getSession();
    
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
    

	public String execute() throws Exception {
        this.iUserService.save(this.user);
        return "success";
    }

/*    管理员登陆*/
    public String findOne() throws Exception{
    	User user = this.iUserService.findOne(this.user);
    	if(user == null){
    		return ERROR;
    	}
    	if(user.getIsadmin()==1){
    		
        	session.put("user", user);
        	return SUCCESS;
    	}else{
    		return ERROR;
    	}
    	
    }
/*    查找所有用户信息*/
    public String getAll()throws Exception{
    	List<User> users = this.iUserService.getAll();
    	//System.out.println(users.get(0).getName());
    	session.put("users", users);
    	return SUCCESS;
    }
   
  /*  用户登陆*/
    public String login() throws Exception{
    	
    	User user = this.iUserService.findOne(this.user);
    	if(user == null){
    		this.setMessage("用户名或者密码错误！");
    		return ERROR;
    	}else{
        	return SUCCESS;
    	}
    	
    }
    /*用户注册*/
    public String register() throws Exception{
    	String id = CommonUtil.createUUID();
    	this.user.setId(id);
    	this.user.setPhoto("aaa");
    	this.iUserService.save(this.user);
    	return SUCCESS;
    }
	
/*    @Override
    public void validate() {
    	int sex = this.user.getSex();
    	if(sex<0 || sex>1){
    		this.addActionError("性别不合法！");
    		
    	}
    }*/
}
