package com.kidream.dept.tongtianxia.library.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kidream.dept.tongtianxia.library.domin.Subject;
import com.kidream.dept.tongtianxia.library.mapper.SubjectMapper;
import com.kidream.dept.tongtianxia.library.service.SubjectService;

@Service
public class SubjectServiceImpl implements SubjectService{
	@Autowired
	private SubjectMapper mapper;
	
	@Override
	public List<Subject> listSubject() {
		return mapper.getSubjects();
	}
	
	@Override
	public Subject getSubject(Long id) {
		return mapper.getSubjectById(id);
	}
}
