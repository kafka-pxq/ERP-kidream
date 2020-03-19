package com.kidream.dept.tongtianxia.library.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kidream.dept.tongtianxia.library.domin.Product;
import com.kidream.dept.tongtianxia.library.service.ProductService;
import com.kidream.dept.tongtianxia.library.service.PublisherService;
import com.kidream.dept.tongtianxia.library.service.SubjectService;

/**
 * 封装产品的操作，包括产品信息增删改查
 * @author MACHENIKE
 *
 */
@Controller
@RequestMapping("/library")
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private PublisherService publiserService;
	@Autowired
	private SubjectService subjectService;
	//判断请求类型，分发请求
	@RequestMapping("/product")
	public ModelAndView action(HttpServletRequest request,HttpServletResponse response,Product product) {
		String cmd = request.getParameter("cmd");
		if ("addOrUpdate".equals(cmd.trim()) && cmd.trim().length() != 0) {
			if (request.getParameter("id") == null || request.getParameter("id").trim() == "") {
				System.out.println("id为null");
				return add(request, product);			//添加操作
			}else {
				System.out.println("id不为null，id="+request.getParameter("id"));
				return modify(request);						//修改并做保存操作
			}
		}else if ("delete".equals(cmd.trim()) && cmd.trim().length() != 0) {
			return delete(request,response);
		}
		return listAll(request, response);
	}
	
	/**
	 *	更改产品信息 
	 *	在用户点击保存后，应先判断用户更改后的产品名称和属性是否在product表中已经存在，如果存在，
	 *	则不能保存，查询是出现同一产品不同的库存量的情况
	 * @param request
	 * @return
	 */
	private ModelAndView modify(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Product product = new Product();
		product.setProduct_name(request.getParameter("product_name"));
		product.setAttribute(request.getParameter("attribute"));
		try {
			productService.updateProduct(product);
			System.out.println("产品信息修改未存在，添加");
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());//产品信息更改错误
			mv.setViewName("forward:/library/product/toEditView");
		}
		mv.addObject("msg", "更改成功!");
		mv.setViewName("forward:/libray/product?cmd=listAll");
		return mv;
	}
	//添加产品信息
	private ModelAndView add(HttpServletRequest request,Product product) {
		//接收参数并封装到product对象中
		String publisher_id = request.getParameter("publisher_id").trim();
		String subject_id = request.getParameter("subject_id").trim();
		product.setPublisher(publiserService.getPublisher(publisher_id));
		product.setSubject(subjectService.getSubject(Long.valueOf(subject_id)));
		product.setDiscount(Float.valueOf(request.getParameter("unitPrice")));
		System.out.println("ProductController.add()-------------");
		ModelAndView mv = new ModelAndView();
		try {
			productService.add(product);
			mv.addObject("msg", "添加成功!");
			mv.setViewName("forward:/library/product?cmd=listAll");
			return mv;
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("/product/product_input");
			return mv;
		}
	}
	//跳转到产品信息修改页面，并把要修改的信息回显到页面
	@RequestMapping("/product/toEditView")
	private ModelAndView toEditView(HttpServletRequest request, HttpServletResponse response) {
		Long id = Long.valueOf(request.getParameter("id"));
		Product product = productService.getProductById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("publishers", publiserService.getList());
		mv.addObject("subjects", subjectService.listSubject());
		mv.addObject("product",product);
		mv.setViewName("/product/product_input");
		return mv;
	}
	//产品信息删除
	private ModelAndView delete(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		productService.delete(Long.valueOf(id));
		return listAll(request, response);
	}
	//查询所有产品列表
	private ModelAndView listAll(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView(); 
		mv.addObject("productList", productService.listAll());
		mv.setViewName("product/product_list");
		return mv;
	}
	//跳转到产品信息添加界面
	@RequestMapping("/product/toInputView")
	private ModelAndView toInputView(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("publishers", publiserService.getList());
		mv.addObject("subjects", subjectService.listSubject());
		mv.setViewName("/product/product_input");
		return mv;
	}
	
}