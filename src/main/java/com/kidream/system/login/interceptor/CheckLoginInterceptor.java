package com.kidream.system.login.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.kidream.system.login.context.UserContext;

public class CheckLoginInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (UserContext.getCurrentUser() == null) {
			response.sendRedirect("/index.jsp");
			return false;
		}
		return true;
	}
	
	
}
