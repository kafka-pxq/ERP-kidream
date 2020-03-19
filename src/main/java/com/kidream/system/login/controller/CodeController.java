package com.kidream.system.login.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 登录验证码的生成
 * @author MACHENIKE
 *
 */
@Controller
@RequestMapping("code")
public class CodeController {
	//定义验证码的源码，随机抽取4个字符作为验证码
	private static final String sourceStr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	
	private Random random = new Random();
	/**
	 * 随机生成4个字符
	 * @return
	 */
	public String getCode() {
		String code = "";
		for (int i = 0; i < 4; i++) {
			code += sourceStr.charAt(random.nextInt(sourceStr.length()));
		}
		return code;
	}
	
	public Color getColor() {
		int red = random.nextInt(256);
		int green = random.nextInt(256);
		int bule = random.nextInt(256);
		Color color = new Color(red,green,bule );
		
		return color;
	}
	
	@RequestMapping("codeImg")
	public void getCodeImg(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		BufferedImage image = new BufferedImage(100, 34, BufferedImage.TYPE_INT_RGB);
		Graphics pen = image.getGraphics();
		pen.fillRect(0,0, 100, 35);
		pen.setFont(new Font("微软雅黑",Font.BOLD,35));
		String code = getCode();
		System.out.println("验证码为---------------------："+code);
		request.getSession().setAttribute("randomCode", code);
		for (int i = 0; i < code.length(); i++) {
			pen.setColor(getColor());
			pen.drawString(String.valueOf(code.charAt(i)), i*15+5, 35);
		}
		ServletOutputStream sos = response.getOutputStream();
		ImageIO.write(image, "png", sos);
		sos.close();
		image.flush();
	}
	
	
}
