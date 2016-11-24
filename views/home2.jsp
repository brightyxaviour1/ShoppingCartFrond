<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Admin home</title>

<!-- Bootstrap -->
<link href="/ShoppingCartFrontEnd/resources/css/bootstrap.min.css"
	rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Courgette"
	rel="stylesheet">

<style>
body {
	font-family: 'Courgette', cursive;
	font-size: 20px;
}

footer {
	background-color: #0000A0;
	color: white;
	padding: 5px;
	text-align: center;
}
</style>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->





<!-- DC Mega Menu CSS -->
<link type="text/css" rel="stylesheet"
	href="http://cdn.dcodes.net/2/menus/mega/css/dc_mega_menu_lightblue.css" />
<!-- jQuery Library (skip this step if already called on page ) -->
<script type="text/javascript"
	src="http://cdn.dcodes.net/2/jquery.min.js"></script>
<!-- (do not call twice) -->
<!-- DC Mega Menu JS -->
<script type="text/javascript"
	src="http://cdn.dcodes.net/2/menus/mega/js/jquery.hoverIntent.minified.js"></script>
<script type="text/javascript"
	src="http://cdn.dcodes.net/2/menus/mega/js/dc_mega_menu.js"></script>
<script type="text/javascript">
	$(document).ready(function($) {
		$('#dc_mega-menu-lightblue').dcMegaMenu({
			rowItems : '3',
			speed : 'fast',
			effect : 'fade'
		});
	});
</script>






</head>
<body>
	<c:choose>
		<c:when test="${empty loggedInUser}">



			<%-- <div class="container-fluid">
				<nav class="navbar navbar-light" style="background-color:blue;">

				<h1>
					<span class="label label-default"> Home</span>
				</h1>


				<div class="btn-group btn-group-lg pull-right">
					<a href="home"
						class="btn btn-primary active glyphicon glyphicon-home">Home</a> <a
						href="#" class="btn btn-primary glyphicon glyphicon-user ">Hi
						${loggedInUser}</a> <a href="loginHere"
						class="btn btn-primary glyphicon glyphicon-log-in">Logout</a>


				</div>


				</nav>

			</div>
 --%>


			<!-- DC Mega Menu Start-->
			<ul id="dc_mega-menu-lightblue" class="dc_mm-lightblue">
				<li><a href="home">Home</a></li>
				<li><a href="#">Hi ${loggedInUser}</a></li>

				<li><a href="loginHere">Logout</a></li>

			</ul>
			<!--DC Mega Menu End -->

		</c:when>


		<c:when test="${not empty loggedInUser}">

			<%-- 
			<div class="container-fluid">
				<nav class="navbar navbar-light" style="background-color:blue;">



				<h1>
					<span class="label label-default"> Home</span>
				</h1>

				<div class="btn-group btn-group-lg pull-right">

					<a href="onLoad"
						class="btn btn-primary active glyphicon glyphicon-home">Home</a> <a
						href="#" class="btn btn-primary glyphicon glyphicon-user ">Hi
						${loggedInUser}</a> <a href="logout"
						class="btn btn-primary glyphicon glyphicon-log-out">Logout</a>
				</div>

				</nav>
			</div>

 --%>


			<!-- DC Mega Menu Start-->
			<ul id="dc_mega-menu-lightblue" class="dc_mm-lightblue">
				<li><a href="onLoad">Home</a></li>
				<li><a href="#">Hi ${loggedInUser}</a></li>
	<!-- 					
				<li><a href="categories">Category</a></li>
				<li><a href="suppliers">Suppliers</a></li>
				<li><a href="products">Product</a></li>
				<li><a href="about">About</a></li>
				<li><a href="contact">Contact</a></li>

	 -->
				<li><a href="loginHere">Logout</a></li>

			</ul>
			<!--DC Mega Menu End -->


		</c:when>


	</c:choose>



	<%@ include file="/views/adminHome.jsp"%><br>

	<div id="registerHere">
		<c:if test="${isUserClickedRegisterHere==true}">
			<%@ include file="/views/memberDetails.jsp"%>

		</c:if>
	</div>



	<div id="admin">

		<c:if test="${isAdmin==true}">

			<%--  <div class="container-fluid">
	 <nav class="navbar navbar-light" style="background-color:#e6ccff;" >



	<h1>
		<span class="label label-default">Puppies Hub</span>
	</h1>

<div class="btn-group btn-group-lg pull-right">

		<a href="home" class="btn btn-info active glyphicon glyphicon-home">Home</a> 
	
		<a href="#" class="btn btn-info glyphicon glyphicon-user ">Hi ${loggedInUser}</a>
						
		<a href="logout" class="btn btn-info glyphicon glyphicon-log-out">Logout</a></div>
		
		</nav></div> --%>

			<%@ include file="/views/adminHome.jsp"%>


		</c:if>

		<c:if test="${isAdmin==false}">






			<%@ include file="/views/productlist.jsp"%>

		</c:if>


		<div id="categories">
			<c:if test="${isAdminClickedCategories==true}">
				<%-- 						<%@ include file="/views/adminHome.jsp"%>
 --%>
				<%@ include file="/views/category.jsp"%>
			</c:if>
		</div>

		<div id="products">
			<c:if test="${isAdminClickedProducts==true}">
				<%@ include file="/views/adminHome.jsp"%>
				<%@ include file="/views/product.jsp"%>
			</c:if>
		</div>

		<div id="suppliers">
			<c:if test="${isAdminClickedSuppliers==true}">
				<%@ include file="/views/adminHome.jsp"%>
				<%@ include file="/views/supplier.jsp"%>
			</c:if>
		</div>

	</div>









	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->


					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img class="first-slide home-image"
								src="<c:url value="/resources/images/0.jpg" />"
								alt="First slide">
							<div class="container">
								<div class="carousel-caption">
									<h1></h1>
								</div>
							</div>
						</div>

						<div class="item">
							<img class="second-slide home-image"
								src="<c:url value="/resources/images/1.jpg" />"
								alt="Second slide">
						</div>

						<div class="item">
							<img class="third-slide home-image "
								src="<c:url value="/resources/images/2.jpg" />"
								alt="Third slide">
						</div>

						<div class="item">
							<img class="second-slide home-image"
								src="<c:url value="/resources/images/3.jpg" />"
								alt="Fourth slide">

						</div>

					</div>


				</div>
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<!-- /.carousel -->
		</div>
	</div>
	</br>





	<footer> <p1>Copyright © Britt:ShopOnline 2016</p1> </footer>







	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>
</body>
</html>



