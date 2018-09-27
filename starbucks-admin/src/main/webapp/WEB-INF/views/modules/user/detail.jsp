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
        <td>用户名:</td>
        <td>${tbUser.username}</td>
    </tr>
    <tr>
        <td>邮箱:</td>
        <td>${tbUser.email}</td>
    </tr>
    <tr>
        <td>手机:</td>
        <td>${tbUser.phone}</td>
    </tr>
    <tr>
        <td>更新时间:</td>
        <td><fmt:formatDate value="${tbUser.updated}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    </tr>
    </tbody>
</table>

<!-- ./wrapper -->

</body>
</html>
