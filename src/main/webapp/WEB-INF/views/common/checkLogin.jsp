<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.kidream.system.login.pojo.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		User user = (User)session.getAttribute("user_in_session");
		if(user == null){
			response.sendRedirect("/loginView/login.jsp");
		}
	%>
	
	<h2>检查登录jsp</h2>
	
</body>
</html>