<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/product/search" method="post">
	<input name="min" value="${param.min}" placeholder="Min Price?">
	<input name="max" value="${param.max}" placeholder="Max Price?">
	<button>Search</button>
</form>




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