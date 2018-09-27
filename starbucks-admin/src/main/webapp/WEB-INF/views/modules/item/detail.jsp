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
        <td>商品标题:</td>
        <td>${tbItem.title}</td>
    </tr>
    <tr>
        <td>商品卖点:</td>
        <td>${tbItem.sellPoint}</td>
    </tr>
    <tr>
        <td>商品价格(分):</td>
        <td>${tbItem.price}</td>
    </tr>
    <tr>
        <td>库存数量</td>
        <td>${tbItem.num}</td>
    </tr>
    <tr>
        <td>商品条形码:</td>
        <td>${tbItem.barcode}</td>
    </tr>
    <tr>
        <td>商品图片:</td>
        <td>${tbItem.image}</td>
    </tr>
    <tr>
        <td>所属类目:</td>
        <td>${tbItem.tbItemCat.name}</td>
    </tr>
    <tr>
        <td>商品状态:</td>
        <td>${tbItem.status}</td>
    </tr>
    <tr>
        <td>更新时间:</td>
        <td><fmt:formatDate value="${tbItem.updated}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    </tr>
    </tbody>
</table>

<!-- ./wrapper -->

</body>
</html>
