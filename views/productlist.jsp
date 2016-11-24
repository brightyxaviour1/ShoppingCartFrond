<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>
</head>
<body>
	<center>
		<h1>Shopping Cart</h1>
	</center>
	<div class="container">
		<table class="table table-bordered" align="center">
			<tr>

				<td align="left" width="50" style="">PRODUCT IMAGE</td>
				<td align="left" width="50">DESCRIPTION</td>
				<td align="left" width="50">NAME</td>
				<td align="left" width="50">PRICE</td>
				<td align="left" width="50">SUPPLIER</td>
				<td align="left" width="50">ORDER</td>



			</tr>


			<c:forEach var="product" items="${productList}">


				<!-- <tr> -->
				<%-- <td>${product.id }</td> --%>

				<tr>
					<c:url value="/resources/images/${product.id }.jpg" var="imgpath" />
					<td><img src="${imgpath}" style="width: 135px; height: 150px;"></td>
					<td>${product.description}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.supplier.name}</td>




					<td><a
						href="${pageContext.request.contextPath}/cart/add/${product.id}"><button
								type="button" class="btn btn-success">Order Now</button></a></td>

				</tr>

			</c:forEach>
		</table>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>


</body>
</html>
