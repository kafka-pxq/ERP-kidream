<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>产品添加</title>
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
				<h1>产品编辑</h1>
			</section>
			<section class="content">
				<div class="box">
					<form class="form-horizontal" action="/library/product?cmd=addOrUpdate"
						method="post" id="editForm">
						<input type="hidden" name="id" value="${product.id}">
						<div class="form-group" style="margin-top: 10px;">
							<label for="name" class="col-sm-2 control-label">产品名称：</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="name"
									name="product_name" value="${product.product_name}" placeholder="请输入产品名称" required="required">
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">产品属性：</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="email"
									name="attribute" value="${product.attribute}" placeholder="请输入产品属性">
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">库存量：</label>
							<div class="col-sm-6">
								<input type="number" class="form-control" id="email"
									name="inventory" value="${product.inventory}" placeholder="请输入库存量">
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">出版社：</label>
							<div class="col-sm-6">
								<select class="form-control" name="publisher_id" >
									<c:forEach items="${publishers}" var="publisher">
										<option value="${publisher.organization_code}">${publisher.publisher_name}</option>
									</c:forEach>
									<option value="${publisher.organization_code}">无</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">分类：</label>
							<div class="col-sm-6">
								<select class="form-control" name="subject_id">
									<c:forEach items="${subjects}" var="subject">
										<option value="${subject.id}">${subject.subject_name}</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">单价：</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="money"
									onkeyup="checkNum(this)" name="unitPrice" placeholder="请输入单价" value="${product.unitPrice}">
							</div>
							<script type="text/javascript">
								function checkNum(obj) {
									//检查是否是非数字值
									if (isNaN(obj.value)) {
										obj.value = "";
									}
									if (obj != null) {
										//检查小数点后是否对于两位
										if (obj.value.toString().split(".").length > 1
												&& obj.value.toString().split(
														".")[1].length > 2) {
											alert("小数点后多于两位！");
											obj.value = "";
											return false;
										}
									}
								};
							</script>
						</div>

						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">折扣：</label>
							<div class="col-sm-6">
								<input type="number" class="form-control" id="money" max="1.0"
									min="0.0" step="0.05" name="discount" placeholder="请输入折扣"  value="${product.discount}">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-1 col-sm-6">
								<input id="submitBtn" type="submit" class="btn btn-primary"
									value="保存"  onclick="javaScript:alert('保存成功')">
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
