package com.kidream.system.login.service.impl;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kidream.system.login.context.UserContext;
import com.kidream.system.login.mapper.UserMapper;
import com.kidream.system.login.pojo.User;
import com.kidream.system.login.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	private static Logger log = Logger.getLogger("adminLog");

	@Override
	public void checkLogin(String username,String password) {
		User admin = userMapper.getUserByUsername(username);
		if (admin == null) {
			log.info("该账户不存在");
			throw new RuntimeException("该账户不存在");
		}
		if (!admin.getPassword().equals(password)) {
			throw new RuntimeException("密码输入错误");
		}
		UserContext.setCurrentUser(admin);
	}
	
}
