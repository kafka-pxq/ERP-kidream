package com.kidream.dept.tongtianxia.library;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kidream.dept.tongtianxia.library.domin.Publisher;
import com.kidream.dept.tongtianxia.library.mapper.PublisherMapper;
import com.kidream.dept.tongtianxia.library.service.PublisherService;
import com.kidream.system.login.mapper.UserMapper;
import com.kidream.system.login.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-mybatis.xml")
public class PublisherTest {
	
	@Autowired
	private UserService userService;
	@Autowired
	private PublisherService publisherService;
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private PublisherMapper publisherMapper;
	@Test
	public void testPublisher() throws Exception {
//		System.out.println("============"+userService);
//		System.out.println("-------------------------------------");
//		System.out.println(publisherService);
//		System.out.println(userMapper);
		List<Publisher> list = publisherService.getList();
//		List<Publisher> list = publisherMapper.getPublishers();
		for (Publisher p : list) {
			System.out.println(p);
		}
	}
	
	@Test
	public void testAdd() throws Exception {
		Publisher p = new Publisher();
		p.setOrganization_code("123456789");
		p.setPublisher_name("adfad");
		p.setAddress("重庆");
		int change = publisherService.addPublisher(p);
		System.out.println(change);
	}
	
}
