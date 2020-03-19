package com.kidream.dept.tongtianxia.library;
import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {
	//����һ��SQLSessionFactory����
	private static SqlSessionFactory factory = null;
	static {
		InputStream in;
		try {
			in = Resources.getResourceAsStream("spring/spring-mybatis.xml");
			factory = new SqlSessionFactoryBuilder().build(in);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSession getSession() {
		return factory.openSession();
	}
	
	public static <T>T getMapper(Class <T>T){
		return getSession().getMapper(T);
	}
}
