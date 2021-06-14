<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Sorting</title>
</head>
<body>
	<h3>SORTING BY ${field}</h3>
	<table border="1" style="width:100%">
	<tr>
		<th><a href="/product/sort?field=id">Id</a></th>
		<th><a href="/product/sort?field=name">Name</a></th>
		<th><a href="/product/sort?field=price">Price</a></th>
		<th><a href="/product/sort?field=createDate">Date</a></th>
	</tr>
	<c:forEach var="item" items="${items}">
		<tr>
			<td>${item.id}</td>
			<td>${item.name}</td>
			<td>${item.price}</td>
			<td>${item.createDate}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>
