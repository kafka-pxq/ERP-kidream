<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>叩丁狼客户管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/css/error_css.css" rel="stylesheet" type="text/css" />
    <jsp:include page="link.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <#include "navbar.jsp">
    <#include "menu.jsp">
    <div class="content-wrapper">
        <section class="content-header">
            <h1>无操作权限</h1>
        </section>
        <section class="content">
            <div class="box">
                <div style="margin: 10px;">
                    <div class="row col-sm-10" >
                        <div id="login_center">
                            <div id="login_area">
                                <div id="login_box">
                                    <div id="login_form">
                                        <H2>你没有执行该操作的权限！</H2>
                                        <span>请联系管理员解决！</span>
                                        <span>联系电话：020-85628002</span>
                                        <span>叩丁狼教育</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
    </div>
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
