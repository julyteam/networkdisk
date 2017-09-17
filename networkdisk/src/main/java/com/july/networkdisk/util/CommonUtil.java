package com.july.networkdisk.util;

import java.util.Map;
import java.util.UUID;

import com.july.networkdisk.vo.User;
import com.opensymphony.xwork2.ActionContext;

public class CommonUtil {
	public static String createUUID(){
		String strID=UUID.randomUUID().toString();
		return strID;
	}
	public static User getSessionUser(){
		ActionContext actionContext = ActionContext.getContext(); // 获取session
		Map<String, Object> session = actionContext.getSession();
		session.put("user", test());
		return (User) session.get("user");
	}
	
	public static User test(){
		User user = new User();
		user.setId("1");
		user.setName("laozhang");
		return user;
	}
}
