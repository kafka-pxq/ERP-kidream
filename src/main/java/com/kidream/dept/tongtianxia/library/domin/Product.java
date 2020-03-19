package com.kidream.dept.tongtianxia.library.domin;

import java.math.BigDecimal;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 产品信息
 * 
 * @author MACHENIKE
 *
 */
@ToString
public class Product {
	@Setter
	@Getter
	private Long id; // 产品编号
	@Setter
	@Getter
	private String product_name; // 产品名称
	@Setter
	@Getter
	private String attribute = null; // 产品属性
	@Setter
	@Getter
	private Integer inventory = 0; // 库存量
	@Setter
	@Getter
	private Publisher publisher; // 出版社/商
	@Setter
	@Getter
	private Subject subject; // 科目
	@Setter
	@Getter
	private BigDecimal unitPrice = null; // 单价
	@Setter
	@Getter
	private Float discount = 1F; // 折扣
//	@Getter
//	private BigDecimal total_price = unitPrice.multiply(new BigDecimal(inventory)); // 总价
	@Getter
	private BigDecimal discount_price; // 折后价（卖价）
	@Getter
	private BigDecimal total_discount_price;// 折后总价
	
	@Getter
	private BigDecimal total_price;			//总价
	
	public void setDiscount_price(Float discount,BigDecimal unitPrice) {
		this.discount_price =  new BigDecimal(discount.toString()).multiply(unitPrice);
	}
	
	public void setTotal_price(Integer inventory,BigDecimal unitPrice) {
		this.total_price = new BigDecimal(inventory).multiply(unitPrice);
	}
	
	public void setTotal_discount_price(Integer inventory,BigDecimal unitPrice,Float discount) {
		this.total_discount_price = new BigDecimal(inventory).multiply(unitPrice).multiply(new BigDecimal(discount.toString()));
	}
}
