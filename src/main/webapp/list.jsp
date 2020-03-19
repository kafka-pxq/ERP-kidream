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
				<h1 align="center">仓库管理</h1>
			</section>
			<section class="content">
				<div class="box">
					<!--高级查询--->
					<form class="form-inline" id="searchForm" action="#" method="post">
						<input type="hidden" name="currentPage" id="currentPage" value="1">
						<a href="/publisher/getPublishers" class="btn btn-success inputBtn"
							style="margin: 10px"> <span class="glyphicon glyphicon-plus"></span>
							添加
						</a> <a href="/query.jsp" class="btn btn-success inputBtn"
							style="margin: 10px"> <span class="glyphicon glyphicon-plus"></span>
							查询
						</a> <a href="/query.jsp" class="btn btn-success inputBtn"
							style="margin: 10px"> <span class="glyphicon glyphicon-plus"></span>
							入库
						</a> <a href="/query.jsp" class="btn btn-success inputBtn"
							style="margin: 10px"> <span class="glyphicon glyphicon-plus"></span>
							出库
						</a> <a href="/query.jsp" class="btn btn-success inputBtn"
							style="margin: 10px"> <span class="glyphicon glyphicon-plus"></span>
							出入库流水查询
						</a>
					</form>
					<!--编写内容-->
					<div class="box-body table-responsive no-padding ">
						<table class="table table-hover table-bordered">
							<tr>
								<th>产品编号</th>
								<th>产品名称</th>
								<th>属性</th>
								<th>库存量</th>
								<th>出版社</th>
								<th>类别</th>
								<th>单价</th>
								<th>总价</th>
								<th>操作</th>
							</tr>
							<!-- 
							<c:forEach items="product_list" var="product">
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td>
										<a class="btn btn-info btn-xs inputBtn" href="#">
										<span class="glyphicon glyphicon-pencil"></span>
										入库
										</a>
										<a href="#" class="btn btn-danger btn-xs btn_delete">
											<span class="glyphicon glyphicon-trash"></span>
											出库
										</a>
									</td>
								</tr>
							</c:forEach>
							 -->




							<tr>
								<td>1</td>
								<td>主题活动单书</td>
								<td>2册</td>
								<td>115</td>
								<td>北京芳草</td>
								<td>教材</td>
								<td>59</td>
								<td>24552</td>
								<td><a class="btn btn-info btn-xs inputBtn" href="#"> <span
										class="glyphicon glyphicon-pencil"></span> 入库
								</a> <a href="#" class="btn btn-danger btn-xs btn_delete"> <span
										class="glyphicon glyphicon-trash"></span> 出库
								</a></td>
							</tr>
							<tr>
								<td>1</td>
								<td>主题活动单书</td>
								<td>4册</td>
								<td>115</td>
								<td>北京芳草</td>
								<td>教材</td>
								<td>59</td>
								<td>24552</td>
								<td><a class="btn btn-info btn-xs inputBtn" href="#"> <span
										class="glyphicon glyphicon-pencil"></span> 入库
								</a> <a href="#" class="btn btn-danger btn-xs btn_delete"> <span
										class="glyphicon glyphicon-trash"></span> 出库
								</a></td>
							</tr>
							<tr>
								<td>1</td>
								<td>主题活动单书</td>
								<td>6册</td>
								<td>115</td>
								<td>北京芳草</td>
								<td>教材</td>
								<td>59</td>
								<td>24552</td>
								<td><a class="btn btn-info btn-xs inputBtn" href="#"> <span
										class="glyphicon glyphicon-pencil"></span> 入库
								</a> <a href="#" class="btn btn-danger btn-xs btn_delete"> <span
										class="glyphicon glyphicon-trash"></span> 出库
								</a></td>
							</tr>
							<tr>
								<td>4</td>
								<td>洪恩英语套装</td>
								<td>B</td>
								<td>245</td>
								<td>北京洪恩</td>
								<td>教材</td>
								<td>49</td>
								<td>24558</td>
								<td><a class="btn btn-info btn-xs inputBtn" href="#"> <span
										class="glyphicon glyphicon-pencil"></span> 入库
								</a> <a href="#" class="btn btn-danger btn-xs btn_delete"> <span
										class="glyphicon glyphicon-trash"></span> 出库
								</a></td>
							</tr>
							<tr>
								<td>9</td>
								<td>一体机</td>
								<td>44寸</td>
								<td>8</td>
								<td>卡尼奥</td>
								<td>电子产品</td>
								<td>3999</td>
								<td>31992</td>
								<td><a class="btn btn-info btn-xs inputBtn" href="#"> <span
										class="glyphicon glyphicon-pencil"></span> 更改
								</a> <a href="#" class="btn btn-danger btn-xs btn_delete"> <span
										class="glyphicon glyphicon-trash"></span> 删除
								</a></td>
							</tr>
						</table>
						<!--分页-->
						<%@include file="/WEB-INF/views/common/page.jsp"%>
					</div>
				</div>
			</section>
		</div>
		<%@include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
</body>
</html>
