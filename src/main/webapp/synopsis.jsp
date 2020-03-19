<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>部门管理</title>
<jsp:include page="/WEB-INF/views/common/link.jsp" />
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<%@include file="/WEB-INF/views/common/navbar.jsp"%>
		<!--菜单回显-->
		<c:set var="currentMenu" value="department" />
		<%@include file="/WEB-INF/views/common/menu.jsp"%>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>产品添加</h1>
			</section>
			<img alt="" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583691233723&di=d9d7d212bc395a81810bfb693db90d5b&imgtype=0&src=http%3A%2F%2Fp4.ssl.cdn.btime.com%2Ft01aefa239b9bc91ab3.jpg%3Fsize%3D714x559">
			<img alt="" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583691233723&di=d9d7d212bc395a81810bfb693db90d5b&imgtype=0&src=http%3A%2F%2Fp4.ssl.cdn.btime.com%2Ft01aefa239b9bc91ab3.jpg%3Fsize%3D714x559">
			<img alt="" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583691233723&di=d9d7d212bc395a81810bfb693db90d5b&imgtype=0&src=http%3A%2F%2Fp4.ssl.cdn.btime.com%2Ft01aefa239b9bc91ab3.jpg%3Fsize%3D714x559">
		</div>
		<%@include file="/WEB-INF/views/common/footer.jsp"%>
	</div>

</body>
</html>
