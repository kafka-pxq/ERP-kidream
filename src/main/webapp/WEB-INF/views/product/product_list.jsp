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
						<a href="/library/product/toInputView" class="btn btn-success inputBtn"
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
								<th>单价/¥</th>
								<th>折扣</th>
								<th>折扣价</th>
								<th>总价</th>
								<th>折扣总价</th>
								<th>操作</th>
							</tr>
							<c:forEach items="${productList}" var="product">
								<tr>
									<td>${product.id}</td>
									<td>${product.product_name}</td>
									<td>${product.attribute}</td>
									<td>${product.inventory}</td>
									<td>${product.publisher.publisher_name}</td>
									<td>${product.subject.subject_name}</td>
									<td>${product.unitPrice}</td>
									<td>${product.discount}</td>
									<td>${product.discount_price}</td>
									<td>${product.total_price}</td>
									<td>${product.total_discount_price}</td>
									<td>
										<a class="btn btn-info btn-xs inputBtn" href="/library/product/toEditView?id=${product.id}">
										<span class="glyphicon glyphicon-pencil"></span>
										编辑
										</a>
										<a href="/library/product?cmd=delete&id=${product.id}"  class="btn btn-danger btn-xs btn_delete" onclick="javaScript:alert('您确定要删除吗？')"> 
											<span class="glyphicon glyphicon-trash"></span>
											删除
										</a>
									</td>
								</tr>
							</c:forEach>
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
