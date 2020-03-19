<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<aside class="main-sidebar">
	<section class="sidebar">
		<ul class="sidebar-menu" data-widget="tree">

				<!-- ----------------------------畅享培训学校---------------------------------- -->
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i>
					<span>畅享培训学校</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li name="department"><a href="/department"> <i
							class="fa fa-circle-o"></i>部门管理
					</a></li>
					<li name="employee"><a href="/employee"><i
							class="fa fa-circle-o"></i>员工管理</a></li>
					<li name="permission"><a href="#"><i
							class="fa fa-circle-o"></i>权限管理</a></li>
					<li name="role"><a href="#"><i class="fa fa-circle-o"></i>角色管理</a></li>
				</ul></li>
				<!-- ----------------------宝贝梦工场---------------------------------------- -->
				
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i>
					<span>宝贝梦工场</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li name="library"><a href="/library/product?cmd=listAll"><i
							class="fa fa-circle-o"></i>仓库管理</a></li>
					<li name="employee"><a href="/employee"><i
							class="fa fa-circle-o"></i>员工管理</a></li>
					<li name="department"><a href="/department"> <i
							class="fa fa-circle-o"></i>部门管理</a></li>
					<li name="custom"><a href="/"><i
							class="fa fa-circle-o"></i>客户管理</a></li>
					<li name="sale"><a href="/"><i
							class="fa fa-circle-o"></i>销售管理</a></li>
				</ul></li>
				
				<!-- ----------------------幼儿园---------------------------------------- -->
				<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i>
					<span>幼儿园</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li name="department"><a href="/department"> <i
							class="fa fa-circle-o"></i>瑞吉欧幼儿园
					</a></li>
					<li name="employee"><a href="/employee"><i
							class="fa fa-circle-o"></i>戈米浮幼儿园</a></li>
				</ul></li>
				<!-- ----------------------其他---------------------------------------- -->

			<li class="treeview"><a href="#"> <i class="fa fa-files-o"></i>
					<span>数据管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li name="systemDictionary"><a href="#"><i
							class="fa fa-circle-o"></i> 字典目录</a></li>
					<li name="systemDictionaryItem"><a href="#"><i
							class="fa fa-circle-o"></i> 字典明细</a></li>
				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-pie-chart"></i>
					<span>客户管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li name="customer"><a href="#"><i class="fa fa-circle-o"></i>
							客户列表</a></li>
					<li name="customer_potential"><a href=#><i
							class="fa fa-circle-o"></i> 潜在客户</a></li>
					<li name="customer_pool"><a href="#"><i
							class="fa fa-circle-o"></i> 客户池</a></li>
					<li name="customer_fail"><a href="#"><i
							class="fa fa-circle-o"></i> 失败客户</a></li>
					<li><a href="#"><i class="fa fa-circle-o"></i> 正式客户</a></li>
					<li><a href="#"><i class="fa fa-circle-o"></i> 流失客户</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
					<span>客户历史</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li name="customerTraceHistory"><a href="#"><i
							class="fa fa-circle-o"></i> 跟进历史</a></li>
					<li name="customerTransfer"><a href="#"><i
							class="fa fa-circle-o"></i> 移交历史</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-laptop"></i>
					<span>报表统计</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li name="customerReport"><a href="#"><i
							class="fa fa-circle-o"></i>潜在客户报表</a></li>
				</ul></li>

		</ul>
	</section>
</aside>

<script>
	$(function() {
		//菜单初始
		$('.sidebar-menu').tree();
		//菜单激活
		var cuLi = $(".treeview-menu li[name='${currentMenu}']");
		cuLi.addClass("active");
		cuLi.closest(".treeview").addClass("active")
	})
</script>