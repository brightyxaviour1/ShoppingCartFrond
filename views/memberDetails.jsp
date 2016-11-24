<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Britt:ShopOnline</title>
<link href="style.css" rel="stylesheet" type="text/css" />







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
<style type="text/css">
navbar-default .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus
	{
	color: #000; /*Sets the text hover color on navbar*/
}

.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:hover,
	.navbar-default .navbar-nav>.active>a:focus {
	color: white; /*BACKGROUND color for active*/
	background-color: #0000A0;
}

.navbar-default {
	background-color: #0000A0;
	border-color: #512E5F;
}

.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus {
	color: #0000A0;
	text-decoration: none;
	background-color: #0000A0; /*change color of links in drop down here*/
}

.nav>li>a:hover, .nav>li>a:focus {
	text-decoration: none;
	background-color: silver; /*Change rollover cell color here*/
}

.navbar-default .navbar-nav>li>a {
	color: white; /*Change active text color here*/
}

/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	
}

footer {
	background-color: #0000A0;
	color: white;
	padding: 5px;
	text-align: center;
}

.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}

div.container {
	width: 100%;
}

h1 {
	font-style: italic;
	text-align: center;
	color: purple;
}

h3 {
	font-style: italic;
	color: purple;
	font-size: 30px;
}

body {
	
}

.content {
	text-align: center;
}
</style>


<body>

	<!-- 
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			Brand and toggle get grouped for better mobile display
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="onLoad"><span
							class="glyphicon glyphicon-home"></span> Home</a></li>
					<ul class="nav navbar-nav">
						<li class="menu-item active"><a href="about">About </a></li>
						<ul class="nav navbar-nav">
							<li class="menu-item"><a href="contact">Contact </a></li>


						</ul>
					</ul>

				</ul>

				DROPDOWN LOGIN STARTS HERE 

				<ul id="signInDropdown" class="nav navbar-nav navbar-right">


					
				</ul>
			</div>
		</div>
	</div>
	 -->


	<!-- DC Mega Menu Start-->
	<ul id="dc_mega-menu-lightblue" class="dc_mm-lightblue">
		<li><a href="home">Home</a></li>
		<li><a href="about">About</a></li>
		<li><a href="contact">Contact</a></li>
		<li><a href="memberShip">Register</a></li>
		<li><a href="loginHere">Login</a></li>

	</ul>
	<!--DC Mega Menu End -->

	</br>



	<div class="container">
		<h1>
			<span class="label label-danger">Enter your Credentials</span>
		</h1>
		<br> <br>
		<div class="panel panel-default col-lg-8">
			<br> <br>
			<fieldset>

				<form:form modelAttribute="userDetails">
					<br />
					<div class="container">
						<div class="col-lg-6">
							<form:label path="id">  User ID:</form:label>
							<form:input path="id" class="form-control" placeholder="enter id" />
							<br />
							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>

							<form:label path="name">User Name:</form:label>
							<form:input path="name" class="form-control"
								placeholder="enter name" />
							<br />
							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>

							<form:label path="password">Password:</form:label>
							<form:input type="password" path="password" class="form-control"
								placeholder="enter password" />
							<br />
							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>

							<form:label path="email">Email ID:</form:label>
							<form:input path="email" class="form-control"
								placeholder="enter email id" />
							<br />
							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>

							<form:label path="mobile">Mobile #:</form:label>
							<form:input path="mobile" class="form-control"
								placeholder="enter mobile number" />
							<br />
							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>


							<br />
							<form:label path="address">Address: </form:label>
							<form:input path="address" class="form-control"
								placeholder="enter address" />
							<br />
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>
							<br />
						</div>
					</div>
					<div class="container">


						<button type="reset" class="btn btn-danger">Reset</button>
						<button type="submit" name="_eventId_submit"
							class="btn btn-primary">Register</button>
						<br> <br>


					</div>
					<br />
				</form:form>
			</fieldset>
		</div>
	</div>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>


	<footer>
	<p>Copyright � Britt:ShopOnline 2016</p>
	</footer>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>

</body>
</html>