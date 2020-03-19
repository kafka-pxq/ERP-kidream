package com.kidream.dept.tongtianxia.library;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kidream.dept.tongtianxia.library.domin.Subject;
import com.kidream.dept.tongtianxia.library.service.SubjectService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-mybatis.xml")
public class SubjectTest {
	@Autowired
	private SubjectService service;
	
	@Test
	public void testListAll() throws Exception {
		List<Subject> list = service.listSubject();
		System.out.println(list);
	}
	
}
