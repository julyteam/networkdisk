package com.july.networkdisk.web;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;





import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.*;
import com.july.networkdisk.vo.*;
import com.july.networkdisk.service.*;

public class UserAction extends ActionSupport implements ModelDriven<User>
{
    private static final long serialVersionUID = 1L;
    private User user=new User();
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
  public User getModel() {
		
		return user;
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


}
