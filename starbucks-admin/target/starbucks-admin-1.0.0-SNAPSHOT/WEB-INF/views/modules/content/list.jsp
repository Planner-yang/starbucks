<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>星巴克 | 内容信息</title>
    <jsp:include page="${cxtIndex}/head.jsp"/>

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
                展示所有内容信息
            </h1>

        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Horizontal Form -->
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

                                    <div>
                                        <input id="title" type="text" class="form-control"  placeholder="标题">
                                    </div></div>
                            </div>
                        </div>

                    </div>
                    <div class="box-footer">
                        <button id="btnReset" type="button" class="btn btn-default">重置</button>
                        <button id="btnSearch" type="button" class="btn btn-primary pull-right">搜索</button>
                    </div>
                </div>
            </div>
            <!-- /.box -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">用户信息</h3>

                            <a class="btn btn-app" href="/content/form"><i class="fa fa-plus"></i>添加</a>
                            <button class="btn btn-app" onclick="starbucks.showEdit('/content/form?id=')"><i class="fa fa-edit"></i>编辑</button>
                            <button class="btn btn-app" onclick="starbucks.batchDelete('/content/batchDelete?ids=')"><i class="fa fa-trash"></i>删除</button>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body  table-responsive">
                            <table id="dataTable" class="table table-bordered table-striped table-hover" style ="white-space: nowrap;">
                                <thead>
                                <tr>
                                    <th>
                                        <input id="check-all" type="checkbox" class="minimal">
                                    </th>
                                    <th>所属分类</th>
                                    <th>内容标题</th>
                                    <th>子标题</th>
                                    <th>修改时间</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
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
    $(function () {
        var dataTable = starbucks.initDataTables('/content/page',[
            { "data": function (row) {
                return '<input name="check[]" value="'+row.id+'" type="checkbox" class="minimal">';
            }},
            { "data": "tbContentCategory.name" },
            { "data": "title" },
            { "data": "subTitle" },
            { "data": function (row, type, val, meta) {
                return DateTime.format(new Date(row.updated),"yyyy-MM-dd HH:mm:ss");
            } },
            {
                "data": function (row, type, val, meta) {
                    return "<a href='javascript:void(0);' class='btn btn-sm btn-default' onclick='starbucks.showDetail(\"/content/detail?id=\"+"+row.id+")'><i class='fa fa-fw fa-search' title='查看'></i></a>&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "<a href='/content/form?id=" + row.id + "' class='btn btn-sm btn-info'><i class='fa fa-fw fa-edit' title='编辑'></i></a>&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "<a href='javascript:void(0);' class='btn btn-sm btn-danger' onclick='starbucks.showDelete(\"/content/delete?id=\" + " + row.id + ")'><i class='fa fa-fw fa-trash-o' title='删除'></i></a>";                }
            }
        ]);

        // 搜索
        $("#btnSearch").on("click", function () {
            dataTable.settings()[0].ajax.data = {
                "title": $("#title").val()
            };
            dataTable.ajax.reload();
        });


    });





</script>
</body>
</html>
