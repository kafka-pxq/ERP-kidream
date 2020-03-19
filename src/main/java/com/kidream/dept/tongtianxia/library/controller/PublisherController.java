package com.kidream.dept.tongtianxia.library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kidream.dept.tongtianxia.library.domin.Publisher;
import com.kidream.dept.tongtianxia.library.service.PublisherService;

@Controller
@RequestMapping("publisher")
public class PublisherController {
	@Autowired
	private PublisherService service;
	
	@RequestMapping("getPublishers")
	public ModelAndView getPublishers() {
		ModelAndView mav = new ModelAndView();
		List<Publisher> list = service.getList();
		mav.addObject("publishers", list);
		mav.setViewName("forward:/input.jsp");
		return mav;
	}
	
}
