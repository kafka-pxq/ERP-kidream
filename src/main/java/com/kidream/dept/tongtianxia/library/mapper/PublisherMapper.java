package com.kidream.dept.tongtianxia.library.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kidream.dept.tongtianxia.library.domin.Publisher;

public interface PublisherMapper {
	
	public List<Publisher> getPublishers();
	
	public int insert(Publisher publisher);

	public Publisher getPublisher(@Param(value = "publisher_id") String publisher_id);
}
