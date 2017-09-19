package com.july.networkdisk.service.impl;

import com.july.networkdisk.service.*;
import com.july.networkdisk.dao.*;
import com.july.networkdisk.vo.*;
import java.util.*;

public class UserServiceImpl implements IUserService
{
    private UserDao userDao;
    
    public UserDao getUserDao() {
        return this.userDao;
    }
    
    public void setUserDao( UserDao userDao) {
        this.userDao = userDao;
    }
    
    public void save( User user) {
        this.userDao.save(user);
    }
    
    public void update( User user) {
    }
    
    public boolean delete( String id) {
		return false;
    }
    
    public User get( String id) {
        return null;
    }
    
    public List<User> getAll() {
        return this.userDao.getAll();
    }

	public User findOne(User user) {
		return this.userDao.findOne(user);
	}
}
