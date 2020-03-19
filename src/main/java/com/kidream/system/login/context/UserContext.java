package com.kidream.system.login.context;

import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.kidream.system.login.pojo.User;

public class UserContext {

	private static final String USER_IN_SESSION = "user_in_session";

	private UserContext() {
	}

	public static HttpSession getSession() {
		return ((ServletRequestAttributes) (RequestContextHolder.getRequestAttributes())).getRequest().getSession();
	}

	public static void setCurrentUser(User user) {
		getSession().setAttribute(USER_IN_SESSION, user);
	}

	public static Object getCurrentUser() {
		return getSession().getAttribute(USER_IN_SESSION);
	}
}
