<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/taglib.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>我的商城 | 内容页面</title>
    <jsp:include page="${cxtIndex}/head.jsp"/>
    <link href="https://cdn.bootcss.com/zTree.v3/3.5.33/css/metroStyle/metroStyle.min.css" rel="stylesheet">
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
                ${tbContentCategory.id == 0 ? '增加':'编辑'}内容
            </h1>
            <ol class="breadcrumb">
                <li><a href="/main"><i class="fa fa-dashboard"></i>首页</a></li>
                <li><a href="/content/category/form">表单</a></li>
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
                        <form:form id="inputForm" cssClass="" action="/content/category/save" method="post"
                                   modelAttribute="tbContentCategory">
                            <div class="box-body">
                                <form:hidden path="id"/>
                                <div class="form-group">
                                    <label>所属分类</label>
                                    <%--<input type="hidden" id="parentId" name="parentId" class="required" value="${tbContentCategory.parentId}"/>
                                    <input type="text" id="parentName" name="parantId" class="form-control" value="${tbContentCategory.parentName}" readonly="true">--%>
                                    <form:hidden cssClass="required" path="parentId"/>
                                    <form:input cssClass="form-control" path="parentName" placeholder="请选择" readonly="true"/>

                                </div>
                                <div class="form-group">
                                    <label>分类名称</label>
                                    <form:input cssClass="form-control required" path="name" placeholder="请输入分类名称"/>
                                </div>
                                <div class="form-group">
                                    <label>排列序号</label>
                                    <form:input cssClass="form-control required" path="sortOrder" placeholder="请输入排列序号"/>
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
<script src="/static/assets/plugins/jquery-ztree/js/jquery.ztree.core-3.5.min.js"></script>
<script>
    $(function () {
        starbucks.initTree("/content/category/treeData");
    });
</script>
</body>
</html>
