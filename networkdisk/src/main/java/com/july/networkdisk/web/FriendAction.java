package com.july.networkdisk.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.JSONWriter;
import org.springframework.http.server.ServletServerHttpRequest;

import com.july.networkdisk.service.IFriendService;
import com.july.networkdisk.util.CommonUtil;
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
	private IFriendService iFriendService;
    /**
     * 查找好友信息
     * @return
     * @throws Exception
     */
	public String getAll()throws Exception{
		HttpServletRequest request =ServletActionContext.getRequest();
		String uid=request.getParameter("uid");
    	List<User> friends = this.iFriendService.getAll(uid);
    	ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	session.put("friends", friends);
    	return SUCCESS;
    }
	/**
     * 查询好友
     * @return
     * @throws Exception
     */
	
	public void findafriend() throws Exception{
		HttpServletRequest request =ServletActionContext.getRequest();
		HttpServletResponse resp=ServletActionContext.getResponse();
		String friendname= request.getParameter("friendname");
		List<User> thefriend = this.iFriendService.findOne(friendname);
    	ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	session.put("thefriend", thefriend);
    	resp.getWriter().print("true");
		/*return SUCCESS;		*/
	}

	/**
     * 添加好友，根据前台传过来的id
     * @return
     * @throws Exception
     */
	public void addfriend() throws Exception{
		HttpServletRequest request =ServletActionContext.getRequest();
		HttpServletResponse resp=ServletActionContext.getResponse();		
		String friendId= request.getParameter("friendId");
		String userId=request.getParameter("userId");
		friend.setUid(userId);
		friend.setFid(friendId);
		int i = this.iFriendService.insertfriend(friend);
    	resp.getWriter().print("true");		
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

}
