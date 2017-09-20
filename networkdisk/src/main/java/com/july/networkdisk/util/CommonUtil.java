package com.july.networkdisk.util;

import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.july.networkdisk.vo.User;


public class CommonUtil {
	public static String createUUID(){
		String strID=UUID.randomUUID().toString();
		return strID;
	}
	public static HttpSession createSession(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		return session;
		
	}
	public static User getSessionUser(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		return (User)session.getAttribute("user");
	}
	
	public static User test(){
		User user = new User();
		user.setId("1");
		user.setName("laozhang");
		return user;
	}
}
