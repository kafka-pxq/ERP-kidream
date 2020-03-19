package com.kidream.system.login.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.time.DateUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kidream.system.login.service.UserService;
/**
 * @
 * @author 蒲先泉
 *
 */
@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;
	private static Logger log = null;
	static {
		log = Logger.getLogger(UserController.class);
		
	}
	
	@SuppressWarnings("all")
	@RequestMapping(value="loginVerify",produces = MediaType.APPLICATION_PROBLEM_JSON_UTF8_VALUE)
	public ModelAndView loginRequest(@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password,@RequestParam(value = "code",required = true) String code, HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
		username = new String(username.getBytes("ISO-8859-1"),"UTF-8").toString().trim();
		password = new String(password.getBytes("ISO-8859-1"),"UTF-8").toString().trim();
		String sessionCode = (String)request.getSession().getAttribute("randomCode");
		ModelAndView mav = new ModelAndView();
		try {
			userService.checkLogin(username,password);
		} catch (Exception e) {
			request.setAttribute("errorMsg", e.getMessage());
			mav.addObject("errorMsg", e.getMessage());
			mav.setViewName("redirect:/index.jsp");
			return mav;
		}
		if (!code.trim().toLowerCase().equals(sessionCode.toLowerCase())) {
			mav.addObject("errorMsg", "验证码错误");
			mav.setViewName("redirect:/index.jsp");
			return mav;
		}
		log.debug("用户登录信息填写正确");
		HttpSession session = request.getSession();
		session.setAttribute("uName", username);
		session.setAttribute("pwd", password);
		
		//记住密码的设置
		if (request.getParameter("rememberMe") != null) {
			Cookie nameCookie = null;
			Cookie pwdCookie = null;
			try {
				nameCookie = new Cookie("username", URLEncoder.encode(username, "UTF-8"));
				pwdCookie = new Cookie("password",URLEncoder.encode("password","UTF-8"));
			} catch (UnsupportedEncodingException e) {
				log.error("cookie编码支持异常！！！");
				e.printStackTrace();
			}
			nameCookie.setMaxAge(new Long(3*DateUtils.MILLIS_PER_HOUR).intValue());	//设置用户名cookie存活时间为3小时
			pwdCookie.setMaxAge(new Long(3*DateUtils.MILLIS_PER_HOUR).intValue());
			response.addCookie(nameCookie);
			response.addCookie(pwdCookie);
			log.debug("cookie设置成功！！！");
		}
		mav.setViewName("redirect:/list.jsp");
		return mav;
	}
	
	@RequestMapping("logout")
	public String adminLogout(HttpServletRequest request) {
		request.getSession().removeAttribute("user_in_session");;
		return "redirect:/index.jsp";
	}
	
	
}
