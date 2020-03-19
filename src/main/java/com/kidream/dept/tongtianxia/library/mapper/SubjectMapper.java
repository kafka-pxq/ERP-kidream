package com.kidream.dept.tongtianxia.library.mapper;

import java.util.List;

import com.kidream.dept.tongtianxia.library.domin.Subject;

public interface SubjectMapper {
	public List<Subject> getSubjects();
	
	public Subject getSubjectById(Long id);
}
