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
			<section class="content">
				<div class="box">
					<form class="form-horizontal" action=""
						method="post" id="editForm">
						<input type="hidden" name="id">
						<div class="form-group" style="margin-top: 10px;">
							<label for="name" class="col-sm-2 control-label">产品名称：</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="请输入产品名称" required="required">
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">产品属性：</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="请输入产品属性">
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">库存量：</label>
							<div class="col-sm-6">
								<input type="number" class="form-control" id="email" name="email"
									placeholder="请输入库存量">
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">出版社：</label>
							<div class="col-sm-6">
								<select class="form-control">
									<c:forEach items="${publishers}" var="publisher">
										<option value="${organization_code}">${publisher.pubisher_name}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">分类：</label>
							<div class="col-sm-6">
								<select class="form-control">
									<option>非定制教材类</option>
									<option>非定制装备类</option>
									<option>定制装备类</option>
							 		<option>电子产品</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">单价：</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="请输入单价">
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">折扣：</label>
							<div class="col-sm-6">
								<input type="number" class="form-control" id="email" name="email"
										max="1"	min="0" placeholder="请输入折扣">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-1 col-sm-6">
								<button id="submitBtn" type="button" class="btn btn-primary">保存</button>
								<button type="reset" class="btn btn-danger">重置</button>
							</div>
						</div>
					</form>

					<br />
				</div>
			</section>
		</div>
		<%@include file="/WEB-INF/views/common/footer.jsp"%>
	</div>

</body>
</html>
