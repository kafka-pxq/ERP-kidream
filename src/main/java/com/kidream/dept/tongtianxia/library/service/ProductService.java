package com.kidream.dept.tongtianxia.library.service;

import java.util.List;

import com.kidream.dept.tongtianxia.library.domin.Product;

public interface ProductService {
	public List<Product> listAll();
	
	public void delete(Long id);

	public void add(Product product);

	public Product getProductById(Long id);

	public void updateProduct(Product product);
	
	public Product getProduct(Product product);
}
