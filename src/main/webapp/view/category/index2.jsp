<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>	
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Home - Ngoc Trinh</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>

</head>

<body>

	<div class="container">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01"
					aria-controls="navbarTogglerDemo01" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
					<a class="navbar-brand" href="#">Hidden brand</a>
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
						<li class="nav-item"><a class="nav-link disabled" href="#"
							tabindex="-1" aria-disabled="true">Disabled</a></li>
					</ul>
					<form class="d-flex">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav>


		<div class="row">
			<div class="col-md-9">


				<!-- <img src="/assets/images/ngoctrinh2.jpg" height="700px;" width="900px;"> -->

				<h3>CATEGORY MANAGEMENT</h3>
				<jsp:include page="_form.jsp" />
				<hr>
				<jsp:include page="_table.jsp" />

			</div>
			<div class="col-md-3">
				<div class="list-group">
					<a href="#" class="list-group-item list-group-item-action">A
						simple default list group item</a> <a href="#"
						class="list-group-item list-group-item-action list-group-item-primary">A
						simple primary list group item</a> <a href="#"
						class="list-group-item list-group-item-action list-group-item-secondary">A
						simple secondary list group item</a> <a href="#"
						class="list-group-item list-group-item-action list-group-item-success">A
						simple success list group item</a> <a href="#"
						class="list-group-item list-group-item-action list-group-item-danger">A
						simple danger list group item</a> <a href="#"
						class="list-group-item list-group-item-action list-group-item-warning">A
						simple warning list group item</a> <a href="#"
						class="list-group-item list-group-item-action list-group-item-info">A
						simple info list group item</a> <a href="#"
						class="list-group-item list-group-item-action list-group-item-light">A
						simple light list group item</a> <a href="#"
						class="list-group-item list-group-item-action list-group-item-dark">A
						simple dark list group item</a>
					<table border="1" style="width:100%;">
					<c:forEach var="item" items="${items}">
						<tr>
							<td>${item.name}</td>
						</tr>
					</c:forEach>
					</table>

				</div>
			</div>
		</div>




	</div>

</body>

</html>