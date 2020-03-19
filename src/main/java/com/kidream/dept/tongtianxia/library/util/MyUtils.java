package com.kidream.dept.tongtianxia.library.util;

import java.util.List;

import com.kidream.dept.tongtianxia.library.domin.Product;

public class MyUtils {
	
	public static void setValues(List<Product> list) {
		for (Product p : list) {
			p.setDiscount_price(p.getDiscount(), p.getUnitPrice());
			p.setTotal_price(p.getInventory(), p.getUnitPrice());
			p.setTotal_discount_price(p.getInventory(), p.getUnitPrice(), p.getDiscount());
		}
	}
}
