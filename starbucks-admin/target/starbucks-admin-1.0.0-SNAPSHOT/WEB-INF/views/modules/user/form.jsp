<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/taglib.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>我的商城 | 用户页面</title>
    <jsp:include page="${cxtIndex}/head.jsp"/>
</head>


<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">
    <jsp:include page="${cxtIndex}/header.jsp"/>

    <!-- Left side column. contains the logo and sidebar -->
    <jsp:include page="${cxtIndex}/menu.jsp"/>
    <!-- Main content -->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                ${tbUser.id == 0 || tbUser.id == null? '增加':'编辑'}用户
            </h1>
            <ol class="breadcrumb">
                <li><a href="/main"><i class="fa fa-dashboard"></i>首页</a></li>
                <li><a href="/user/form">表单</a></li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                        </div>
                        <c:if test="${message != null}">
                            <div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                ${message}
                            </div>
                        </c:if>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form:form id="inputForm" cssClass="" action="/user/save" method="post" modelAttribute="tbUser">
                            <div class="box-body">
                                <form:hidden path="id"/>
                                <div class="form-group">
                                    <label >用户名</label>
                                    <form:input cssClass="form-control required" path="username" placeholder="请输入用户名"/>
                                </div>
                                <div class="form-group">
                                    <label>密码</label>
                                    <form:password cssClass="form-control required" path="password" placeholder="请输入密码"/>
                                </div>
                                <div class="form-group">
                                    <label>邮箱</label>
                                    <form:input cssClass="form-control required email" path="email" placeholder="请输入邮箱地址"/>
                                </div>
                                <div class="form-group">
                                    <label >手机</label>
                                    <form:input cssClass="form-control required mobile" path="phone" placeholder="请输入手机号码"/>
                                </div>
                                <div class="form-group">
                                    <label >角色(1-管理员, 0-客户)</label>
                                    <form:input cssClass="form-control required" path="role" placeholder="请输入1或0"/>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary pull-right">提交</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="${cxtIndex}/footer.jsp"/>

</div>

<!-- ./wrapper -->

<jsp:include page="${cxtIndex}/foot.jsp"/>

</body>
</html>
