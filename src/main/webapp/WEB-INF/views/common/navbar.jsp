<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="main-header">
	<%
		if(session.getAttribute("user_in_session") == null){
			response.sendRedirect("/index.jsp");
		}
	%>
    <a href="/main/synopsis" class="logo">
        <span class="logo-mini">CRM</span>
        <span class="logo-lg"><b>畅享教育管理系统</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="/js/adminlte/img/user2-160x160.jpg" class="user-image" alt="User Image">
                        <span class="hidden-xs">${user_in_session.username}</span>
                    </a>
                    <ul class="dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close" style="min-width: 100px;">
                        <li>
                            <a href="#">
                                <i class="fa fa-cog" ></i>
                                个人设置
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html">
                                <i class=" fa fa-user"></i>
                                个人信息
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="/user/logout">
                                <i class="fa fa-power-off"></i>
                                注销
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </nav>
</header>