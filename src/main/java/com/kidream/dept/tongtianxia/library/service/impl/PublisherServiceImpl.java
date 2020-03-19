package com.kidream.dept.tongtianxia.library.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kidream.dept.tongtianxia.library.domin.Publisher;
import com.kidream.dept.tongtianxia.library.mapper.PublisherMapper;
import com.kidream.dept.tongtianxia.library.service.PublisherService;

@Service
public class PublisherServiceImpl implements PublisherService{
	@Autowired
	private PublisherMapper mapper;
	
	@Override
	public List<Publisher> getList() {
		return mapper.getPublishers();
	}

	@Override
	public int addPublisher(Publisher publisher) {
		return mapper.insert(publisher);
	}

	@Override
	public Publisher getPublisher(String publisher_id) {
		return mapper.getPublisher(publisher_id);
	}

}
