<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/taglib.jsp"%>
<html>
<head>
    <title>后台管理</title>
</head>

<body>

<table class="table table-hover">
    <tbody>
    <tr>
        <td>编号:</td>
        <td>${tbContent.id}</td>
    </tr>
    <tr>
        <td>所属分类:</td>
        <td>${tbContent.tbContentCategory.name}</td>
    </tr>
    <tr>
        <td>内容标题:</td>
        <td>${tbContent.title}</td>
    </tr>
    <tr>
        <td>子标题:</td>
        <td>${tbContent.subTitle}</td>
    </tr>
    <tr>
        <td>标题描述:</td>
        <td>${tbContent.titleDesc}</td>
    </tr>
    <tr>
        <td>链接:</td>
        <td>${tbContent.url}</td>
    </tr>
    <tr>
        <td>图片绝对路径:</td>
        <td>${tbContent.pic}</td>
    </tr>
    <tr>
        <td>图片2:</td>
        <td>${tbContent.pic2}</td>
    </tr>
    <tr>
        <td>更新时间:</td>
        <td><fmt:formatDate value="${tbContent.updated}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    </tr>
    </tbody>
</table>

<!-- ./wrapper -->

</body>
</html>
