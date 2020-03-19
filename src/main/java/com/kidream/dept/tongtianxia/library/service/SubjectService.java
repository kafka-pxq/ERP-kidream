package com.kidream.dept.tongtianxia.library.service;

import java.util.List;

import com.kidream.dept.tongtianxia.library.domin.Subject;

public interface SubjectService {
	
	public List<Subject> listSubject();
	
	public Subject getSubject(Long id);
}
