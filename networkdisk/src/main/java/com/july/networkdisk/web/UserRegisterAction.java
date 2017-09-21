package com.july.networkdisk.web;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Map;

import com.july.networkdisk.service.IUserService;
import com.july.networkdisk.util.CommonUtil;
import com.july.networkdisk.vo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserRegisterAction extends ActionSupport implements ModelDriven<User>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user = new User();
    private IUserService iUserService;
    ActionContext actionContext = ActionContext.getContext();
	Map session = actionContext.getSession();

	public IUserService getiUserService() {
		return iUserService;
	}

	public void setiUserService(IUserService iUserService) {
		this.iUserService = iUserService;
	}

	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	/*用户注册*/
	public String register() throws Exception{
    	String id = CommonUtil.createUUID();
    	System.out.println(user.getName());
    	String password = CommonUtil.getMD5(user.getPassWord());
    	System.out.println("pqssWord"+password+"~~~~~~~~~~~~~~~~~~~~~~~");
    	user.setPassWord(password);
    	user.setId(id);
    	user.setPhoto(null);
    	this.iUserService.save(user);
    	return SUCCESS;
    }
	
	
	
	
	 
   
}
