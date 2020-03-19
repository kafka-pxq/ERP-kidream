package com.kidream.dept.tongtianxia.library.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kidream.dept.tongtianxia.library.domin.Product;
import com.kidream.dept.tongtianxia.library.mapper.ProductMapper;
import com.kidream.dept.tongtianxia.library.service.ProductService;
import com.kidream.dept.tongtianxia.library.util.MyUtils;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductMapper mapper;
	
	@Override
	public List<Product> listAll() {
		List<Product> list = mapper.listAll();
		MyUtils.setValues(list);
		return list;
	}

	@Override
	public void delete(Long id) {
		mapper.delete(id);
	}

	@Override
	public void add(Product product) {
		if (getProduct(product) != null) {				//表示该类产品已经存在，则不允许再往里面添加重复的产品
			throw new RuntimeException(product.getProduct_name()+"--->"+product.getAttribute()+"------该产品已经存在------");
		}
		mapper.insert(product);
	}
	
	public Product getProduct(Product product) {
		return mapper.getProduct(product.getProduct_name(),product.getAttribute());
	}

	@Override
	public Product getProductById(Long id) {
		return mapper.getProductById(id);
	}

	@Override
	public void updateProduct(Product product) {
		Product flag = getProduct(product);
		if (flag != null) {//输入的更新下信息中产品名称和属性与product表中存在的该类产品信息相同
			System.out.println("该产品信息已经存在了，修改失败");
			throw new RuntimeException("该产品已经存在了，请重新输入...");
		}
		System.out.println("修改后的产品信息不存在");
		mapper.updateProductById(product.getId());
	}
	
}
