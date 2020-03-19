package com.kidream.system.login.mapper;

import org.apache.ibatis.annotations.Param;

import com.kidream.system.login.pojo.User;

public interface UserMapper {
    
	public void insert(User user);
	
	public User getUserByUsername(@Param(value = "username") String username);
	
	public void deleteUser(Long id);
}