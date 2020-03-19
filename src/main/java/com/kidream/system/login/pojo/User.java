package com.kidream.system.login.pojo;

import lombok.Data;

/**
 * 系统登录用户信息
 * @author MACHENIKE
 *
 */
@Data
public class User {
	
	private Long id;
	private String username;
	private String password;
	
}
