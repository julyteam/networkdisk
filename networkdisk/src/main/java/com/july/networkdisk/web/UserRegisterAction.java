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
	/*用户注册*/
	public String register() throws Exception{
    	String id = CommonUtil.createUUID();
    	System.out.println(user.getName());
    	String password = getMD5(user.getPassWord());
    	System.out.println("pqssWord"+password+"~~~~~~~~~~~~~~~~~~~~~~~");
    	user.setPassWord(password);
    	user.setId(id);
    	user.setPhoto(new byte[1]);
    	this.iUserService.save(user);
    	return SUCCESS;
    }
	
	
	
	
	 
   
}
