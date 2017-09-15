package com.july.networkdisk.service.impl;

import com.july.networkdisk.service.*;
import com.july.networkdisk.dao.*;
import com.july.networkdisk.vo.*;
import java.util.*;

public class UserServiceImpl implements IUserService
{
    private UsersDao usersDao;
    
    public UsersDao getUsersDao() {
        return this.usersDao;
    }
    
    public void setUsersDao(final UsersDao usersDao) {
        this.usersDao = usersDao;
    }
    
    public void save(final Users user) {
        this.usersDao.save(user);
    }
    
    public void update(final Users user) {
    }
    
    public void delete(final Integer id) {
    }
    
    public Users get(final Integer id) {
        return null;
    }
    
    public List<Users> getAll() {
        return null;
    }
}
