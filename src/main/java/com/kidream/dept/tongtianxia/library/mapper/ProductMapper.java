package com.kidream.dept.tongtianxia.library.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kidream.dept.tongtianxia.library.domin.Product;

public interface ProductMapper {
	
	/**
	 * 查询所有产品信息
	 * @return
	 */
	public List<Product> listAll();
	
	/**
	 * 删除单个产品信息
	 * @param id
	 */
	public void delete(@Param(value="id")Long id);
	
	/**
	 * 根据产品名称和产品属性获取单个产品信息
	 * @param product_name
	 * @param attribute
	 * @return
	 */
	public Product getProduct(@Param(value="product_name") String product_name,@Param(value="attribute") String attribute);
	
	/**
	 * 插入单个产品的信息
	 * @param product
	 * @return
	 */
	public int insert(Product product);
	/**
	 * 根据id获取单个产品信息
	 * @param id
	 * @return
	 */
	public Product getProductById(Long id);
	/**
	 * 根据id修改产品信息
	 * @param id
	 * @return
	 */
	public int updateProductById(Long id);
	
}
