<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>星巴克 | 商品管理</title>
    <jsp:include page="${cxtIndex}/head.jsp"/>
    <link rel="stylesheet" href="/static/assets/plugins/treeTable/themes/vsStyle/treeTable.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <jsp:include page="${cxtIndex}/header.jsp"/>
    <!-- Left side column. contains the logo and sidebar -->
    <jsp:include page="${cxtIndex}/menu.jsp"/>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                商品管理
            </h1>

        </section>

        <!-- Main content -->
        <section class="content">
            <div class="box box-info">
                <div class="form-horizontal">
                    <div class="box-body">
                        <c:if test="${message != null}">
                            <div class="alert alert-success alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    ${message}
                            </div>
                        </c:if>
                        <div>
                            <h4>高级搜索</h4>
                        </div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-4">
                                    <form:form action="/item/cat/list" method="get" modelAttribute="tbItemCat">
                                    <div>
                                        <form:input cssClass="form-control" path="name" placeholder="请输入分类名称"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <a href="/item/cat/list" type="button" class="btn btn-default">重置</a>
                        <button id="btnSearch" type="submit" class="btn btn-primary pull-right">搜索</button>
                    </div>
                    </form:form>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                                <h3 class="box-title">分类列表</h3>
                                <a class="btn btn-app" href="/item/cat/form"><i class="fa fa-plus"></i>添加</a>
                                <a class="btn btn-app" onclick="starbucks.showEdit('/item/cat/form?id=')"><i class="fa fa-edit"></i>编辑</a>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body  table-responsive">
                            <table id="treeTable" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>类目ID</th>
                                        <th>类目名称</th>
                                        <th>排序</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${tbItemCats}" var="itemCat">
                                    <tr id="${itemCat.id}" pId="${itemCat.parentId}">
                                        <td>${itemCat.id}</td>
                                        <td>${itemCat.name}</td>
                                        <td>${itemCat.sortOrder}</td>
                                        <td>
                                            <a href='/item/cat/form?id=${itemCat.id}' type="button" class='btn btn-primary'><i class='fa fa-edit'>编辑</i></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <button type="button" class='btn btn-danger' onclick="starbucks.showDelete('/item/cat/delete?id=${itemCat.id}')"><i class='fa fa-trash-o'>删除</i></button>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a href='/item/cat/form?parentId=${itemCat.id}&parentName=${itemCat.name}' type="button" class='btn btn-default'><i class='fa fa-plus' >新增下级菜单</i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <jsp:include page="${cxtIndex}/footer.jsp"/>


</div>
<!-- ./wrapper -->

<jsp:include page="${cxtIndex}/foot.jsp"/>

<script>
    $(function(){
        $("#treeTable").treeTable({
            column:1,
            expandLevel:2
        });
    });
</script>
</body>
</html>
