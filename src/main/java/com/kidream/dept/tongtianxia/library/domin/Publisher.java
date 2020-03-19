package com.kidream.dept.tongtianxia.library.domin;

import lombok.Data;

/**
 * 出版社/商
 * @author MACHENIKE
 *
 */
@Data
public class Publisher {
	private String organization_code;		//组织机构代码
	private String publisher_name;		//出版社名
	private String address;				//地址
	private String contact;			//电话
}
