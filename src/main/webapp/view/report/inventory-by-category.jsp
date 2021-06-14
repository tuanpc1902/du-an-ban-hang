<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Search</title>
</head>
<body>
	<h3>TỒN KHO THEO LOẠI</h3>
<table border="1" style="width:100%">
<tr>
	<th>Loại hàng</th>
	<th>Tổng giá</th>
	<th>Số sản phẩm</th>
</tr>
<c:forEach var="item" items="${items}">
	<tr>
		<td>${item.group.name}</td>
		<td>${item.sum}</td>
		<td>${item.count}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>