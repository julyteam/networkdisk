package com.july.networkdisk.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.july.networkdisk.service.IFriendService;
import com.july.networkdisk.vo.Friend;
import com.july.networkdisk.vo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 *@author Ling_jui;
 *@version 2017年9月19日
 *@type FriendAction
 */
@SuppressWarnings("serial")
public class FriendAction extends ActionSupport{
	private Friend friend;
	private User user;
	private String name;
	private IFriendService iFriendService;
	private Map<String, Object> map;  //用来接收查询的数据和返回到前台
	private String result;
	
    public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	/**
     * 查找好友信息
     * @return
     * @throws Exception
     */
	public String getAll()throws Exception{
		map = new HashMap<String, Object>();
		List<User> i = this.iFriendService.getAll(user.getId());
		map.put("listfriends", i);
    	return SUCCESS;
    }
	/**
     * 查询好友
     * @return
     * @throws Exception
     */
	
	public String findafriend() throws Exception{
		map = new HashMap<String, Object>();	
		List<User> list = this.iFriendService.findOne(user.getName());
		map.put("friend", list);	
		return "json";
	}

	/**
     * 添加好友，根据前台传过来的id
     * @return
     * @throws Exception
     */
	public void addfriend() throws Exception{
		
		int i = this.iFriendService.insertfriend(friend);	
	}
	public Friend getFriend() {
		return friend;
	}

	public void setFriend(Friend friend) {
		this.friend = friend;
	}

	public IFriendService getiFriendService() {
		return iFriendService;
	}

	public void setiFriendService(IFriendService iFriendService) {
		this.iFriendService = iFriendService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
