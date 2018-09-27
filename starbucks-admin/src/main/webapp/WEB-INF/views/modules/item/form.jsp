<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/taglib.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>星巴克 | 上皮页面</title>
    <jsp:include page="${cxtIndex}/head.jsp"/>
    <link href="https://cdn.bootcss.com/zTree.v3/3.5.33/css/metroStyle/metroStyle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/static/assets/plugins/dropzone/css/dropzone.css">
    <link rel="stylesheet" href="/static/assets/plugins/dropzone/css/src_basic.scss">
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
                ${tbItem.id == 0 ? '增加':'编辑'}内容
            </h1>
            <ol class="breadcrumb">
                <li><a href="/main"><i class="fa fa-dashboard"></i>首页</a></li>
                <li><a href="/item/form">表单</a></li>
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
                        <form:form id="inputForm" cssClass="" action="/item/save" method="post"
                                   modelAttribute="tbItem">
                            <div class="box-body">
                                <form:hidden path="id"/>
                                <div class="form-group">
                                    <label>所属分类</label>
                                    <form:hidden id="parentId" cssClass="required" path="tbItemCat.id"/>
                                    <input type="text" id="parentName" class="form-control required"
                                           value="${tbItem.tbItemCat.name}" placeholder="请选择"
                                           readonly="true">
                                </div>
                                <div class="form-group">
                                    <label>商品标题</label>
                                    <form:input cssClass="form-control required" path="title" placeholder="请输入商品标题"/>
                                </div>
                                <div class="form-group">
                                    <label>商品卖点</label>
                                    <form:input cssClass="form-control required" path="sellPoint" placeholder="请输入商品卖点"/>
                                </div>
                                <div class="form-group">
                                    <label>商品价格(分)</label>
                                    <form:input cssClass="form-control required" path="price" placeholder="请输入商品价格"/>
                                </div>
                                <div class="form-group">
                                    <label>库存数量</label>
                                    <form:input cssClass="form-control required" path="num" placeholder="请输入库存数量"/>
                                </div>
                                <div class="form-group">
                                    <label>商品条形码</label>
                                    <form:input cssClass="form-control required" path="barcode" placeholder="商品条形码"/>
                                </div>
                                <div class="MyDropzone needsclick dz-clickable" id="dropzone1">
                                    <div class="dz-message needsclick">
                                        请添加图片<br>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>商品图片</label>
                                    <form:input cssClass="form-control" path="image" readonly="true"/>
                                </div>
                                <div class="form-group">
                                    <label>商品状态</label>
                                    <form:input cssClass="form-control required" path="status" placeholder="请输入商品状态"/>
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
<script src="/static/assets/plugins/dropzone/js/dropzone.min.js"></script>
<!-- 加载编辑器的容器 -->

<script>
    $(function () {
        starbucks.initTree("/item/cat/treeData");
        starbucks.InitDropzone("dropzone1", "image");
    });
</script>
</body>
</html>
