package com.july.networkdisk.service;

import com.july.networkdisk.vo.*;

public interface IUserService extends IBaseService<User>
{
	User findOne(User user);
	User selectUserByName(String name);
	User selectUserByTel(String phone);
	User selectUserByEmail(String email);
	
}
