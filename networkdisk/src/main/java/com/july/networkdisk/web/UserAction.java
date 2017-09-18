package com.july.networkdisk.web;

import com.opensymphony.xwork2.*;
import com.july.networkdisk.vo.*;
import com.july.networkdisk.service.*;

public class UserAction extends ActionSupport
{
    private static final long serialVersionUID = 1L;
    private Users user;
    private IUserService iUserService;
    
    public void setiUserService(final IUserService iUserService) {
        this.iUserService = iUserService;
    }
    
    public IUserService getiUserService() {
        return this.iUserService;
    }
    
    public void setUser(final Users user) {
        this.user = user;
    }
    
    public Users getUser() {
        return this.user;
    }
    
    public String execute() throws Exception {
        this.iUserService.save(this.user);
        return "success";
    }
    
    
    
}
