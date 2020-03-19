<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>行业智慧能力平台</title>
<link rel="stylesheet" type="text/css" href="css/style2.0.css">
<body>
<%
	session.invalidate();
%>


<div id="contPar" class="contPar">
	<div id="page1"  style="z-index:1;">
		<div class="title0">CASIC - 数据交换平台</div>
		<div class="title1">旅游、交通、气象、公共安全、大数据</div>
		<div class="imgGroug">
			<ul>
				<img alt="" class="img0 png" src="./img/page1_0.png">
				<img alt="" class="img1 png" src="./img/page1_1.png">
				<img alt="" class="img2 png" src="./img/page1_2.png">
			</ul>
		</div>
		<img alt="" class="img3 png" src="./img/page1_3.jpg">
	</div>
</div>

<!--
右侧登录页面
-->
<div class="tyg-div-denglv">
	<div class="tyg-div-form">
		<form action="/user/loginVerify" enctype="multipart/form-data" method="get">
			<h2>登录</h2><p class="tyg-p">欢迎访问</p>
			<div style="margin:5px 0px;">
				<input type="text" name="username" placeholder="请输入账号..." required="required"/>
			</div>
			<div style="margin:5px 0px;">
				<input type="text" name="password" placeholder="请输入密码..." required="required"/>
			</div>
			<div style="margin:5px 0px;">
				<input type="text" name="code" style="width:150px;" placeholder="不分大小写..." required="required"/>
				<img src="/code/codeImg" style="vertical-align:bottom;" alt="验证码"/>
			</div>
			<span style="color: red">${errorMsg}</span>
			<button type="submit" >登<span style="width:20px;"></span>录</button>
		</form>
	</div>
</div>

More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
<script type="text/javascript" src="./js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="./js/com.js"></script>
<!--[if IE 6]>
<script language="javascript" type="text/javascript" src="./script/ie6_png.js"></script>
<script language="javascript" type="text/javascript">
DD_belatedPNG.fix(".png");
</script>
<![endif]-->


</body>
</html>