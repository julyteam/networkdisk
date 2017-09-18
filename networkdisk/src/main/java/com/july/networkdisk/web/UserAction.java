package com.july.networkdisk.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.*;
import com.july.networkdisk.vo.*;
import com.july.networkdisk.service.*;

public class UserAction extends ActionSupport
{
    private static final long serialVersionUID = 1L;
    private User user;
    private IUserService iUserService;

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
    		ActionContext actionContext = ActionContext.getContext();
        	Map session = actionContext.getSession();
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
    	ActionContext actionContext = ActionContext.getContext();
    	Map session = actionContext.getSession();
    	session.put("users", users);
    	return SUCCESS;
    }
   
  /*  用户登陆*/
    public String login() throws Exception{
    	User user = this.iUserService.findOne(this.user);
    	if(user == null){
    		return ERROR;
    	}else{
    		ActionContext actionContext = ActionContext.getContext();
        	Map session = actionContext.getSession();
        	session.put("user", user);
        	return SUCCESS;
    	}
    }

}
