package com.kidream.dept.tongtianxia.library;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kidream.dept.tongtianxia.library.domin.Product;
import com.kidream.dept.tongtianxia.library.service.ProductService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-mybatis.xml")
public class ProductTest {
	@Autowired
	private ProductService ps;
	@Test
	public void testListAll() throws Exception {
		List<Product> list = ps.listAll();
		for (Product p : list) {
			System.out.println("编号："+p.getId()+"产品名称："+p.getProduct_name()+"产品属性"+p.getAttribute()+"产品库存量"+p.getInventory()+"出版社："+p.getPublisher().getPublisher_name()+"类型："+p.getSubject().getSubject_name()+"单价："+p.getUnitPrice()+"折扣："+p.getDiscount());
			System.out.println("折扣价："+p.getDiscount_price()+"折扣总价："+p.getTotal_discount_price());
		}
	}

}
