package com.july.networkdisk.service;

import java.util.List;

import com.july.networkdisk.vo.*;

public interface IUserService extends IBaseService<User>
{
	User findOne(User user);
	List<User> getAll();
	User selectUserByName(String name);
	User selectUserByTel(String phone);
	User selectUserByEmail(String email);
	void photoup(User user);
	
}
