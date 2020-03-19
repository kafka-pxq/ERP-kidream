package com.kidream.dept.tongtianxia.library.service;

import java.util.List;

import com.kidream.dept.tongtianxia.library.domin.Publisher;

public interface PublisherService {
	
	public List<Publisher> getList();
	
	public int addPublisher(Publisher publisher);

	public Publisher getPublisher(String publisher_id);
}
