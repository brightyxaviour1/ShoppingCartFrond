<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Welcome to ShoppingCart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>

<!-- <meta http-equiv="refresh" content="0; URL=./onLoad" /> -->
<spring:url value="resources/menu.css" var="menuCSS" />
<link href="${menuCSS}" rel="stylesheet" />
<title>Shopping Cart</title>
<script type="text/javascript">
	$('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {

		event.preventDefault();

		event.stopPropagation();

		$(this).parent().addClass('open');

		var menu = $(this).parent().find("ul");
		var menupos = menu.offset();

		if ((menupos.left + menu.width()) + 30 > $(window).width()) {
			var newpos = -menu.width();
		} else {
			var newpos = $(this).parent().width();
		}
		menu.css({
			left : newpos
		});

	});
</script>


<style>
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

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #0000A0;
	color: white;
	padding: 5px;
	text-align: center;
}

#head {
	color: blue
}
/* Main */
#menu {
	width: 100%;
	margin: 0;
	padding: 10px 0 0 0;
	list-style: none;
	background-color: #111;
	background-image: linear-gradient(#444, #111);
	border-radius: 50px;
	box-shadow: 0 2px 1px #9c9c9c;
}

#menu li {
	float: left;
	padding: 0 0 10px 0;
	position: relative;
}

#menu a {
	float: left;
	height: 25px;
	padding: 0 25px;
	color: #999;
	text-transform: uppercase;
	font: bold 12px/25px Arial, Helvetica;
	text-decoration: none;
	text-shadow: 0 1px 0 #000;
}

#menu li:hover>a {
	color: #fafafa;
}

* html #menu li a:hover { /* IE6 */
	color: #fafafa;
}

#menu li:hover>ul {
	display: block;
}

/* Sub-menu */
#menu ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: none;
	position: absolute;
	top: 35px;
	left: 0;
	z-index: 99999;
	background-color: #444;
	background-image: linear-gradient(#444, #111);
	-moz-border-radius: 5px;
	border-radius: 5px;
}

#menu ul li {
	float: none;
	margin: 0;
	padding: 0;
	display: block;
	box-shadow: 0 1px 0 #111111, 0 2px 0 #777777;
}

#menu ul li:last-child {
	box-shadow: none;
}

#menu ul a {
	padding: 10px;
	height: auto;
	line-height: 1;
	display: block;
	white-space: nowrap;
	float: none;
	text-transform: none;
}

* html #menu ul a { /* IE6 */
	height: 10px;
	width: 150px;
}

*:first-child+html #menu ul a { /* IE7 */
	height: 10px;
	width: 150px;
}

#menu ul a:hover {
	background-color: #0186ba;
	background-image: linear-gradient(#04acec, #0186ba);
}

#menu ul li:first-child a {
	border-radius: 5px 5px 0 0;
}

#menu ul li:first-child a:after {
	content: '';
	position: absolute;
	left: 30px;
	top: -8px;
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 8px solid #444;
}

#menu ul li:first-child a:hover:after {
	border-bottom-color: #04acec;
}

#menu ul li:last-child a {
	border-radius: 0 0 5px 5px;
}

/* Clear floated elements */
#menu:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0;
}

* html #menu {
	zoom: 1;
} /* IE6 */
*:first-child+html #menu {
	zoom: 1;
} /* IE7 */
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

#btmanchor a:link {
	color: green;
	text-decoration: none;
	text-align: center;
	font-size: 40px;
}

#btmanchor a:visited {
	color: pink;
	text-decoration: none;
	text-align: center;
}

#btmanchor a:hover {
	color: red;
	text-decoration: underline;
	text-align: center;
}

#btmanchor a:active {
	color: yellow;
	text-decoration: underline;
	text-align: center;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}

.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
	min-height: 200px;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}

.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px;
	margin-left: -1px;
	-webkit-border-radius: 0 6px 6px 6px;
	-moz-border-radius: 0 6px 6px 6px;
	border-radius: 0 6px 6px 6px;
}
/*.dropdown-submenu:hover>.dropdown-menu{display:block;}*/
.dropdown-submenu>a:after {
	display: block;
	content: " ";
	float: right;
	width: 0;
	height: 0;
	border-color: transparent;
	border-style: solid;
	border-width: 5px 0 5px 5px;
	border-left-color: #cccccc;
	margin-top: 5px;
	margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
	border-left-color: #ffffff;
}

.dropdown-submenu.pull-left {
	float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
	left: -100%;
	margin-left: 10px;
	-webkit-border-radius: 6px 0 6px 6px;
	-moz-border-radius: 6px 0 6px 6px;
	border-radius: 6px 0 6px 6px;
}

.padding-left-ten-px {
	padding-left: 10px;
}

.red-text {
	color: #FF0000;
}

.twitter-blue {
	color: #1ec7fe;
}

.facebook-blue {
	color: #3c599f;
}

.linkedin-blue {
	color: #0080b2;
}

.navbar-right {
	padding-right: 25px;
}

.form-group {
	padding: 10px;
}

.form-panel-width {
	width: 220px;
} /*YOU CAN MAKE PANEL AS WIDE AS NEEDED*/
.color-blue {
	color: #0080c5;
}

.color-red {
	color: #FF0000;
}

.error-message {
	font-size: 10px;
}

@media screen and (min-width: 30em ) {
	.form-panel-width {
		width: 100%;
	}
	h {
		text-align: center;
		font-size: 30px;
		font-family: cursive;
		font-style: oblique;
		font-weight: bold;
		text-align: center;
		padding-right: 50px;
		color: orange;
	}
	h1 {
		font-family: fantasy;
		font-style: oblique;
		font-variant: normal;
		font-weight: bold;
		font-size: 20px;
	}
	h2 {
		font-family: fantasy;
		font-style: oblique;
		font-variant: normal;
		font-weight: bold;
		font-size: 20px;
	}
	h3 {
		font-family: fantasy;
		font-style: oblique;
		font-variant: normal;
		/* font-weight: bold; */
		font-size: 20px;
	}
	h4 {
		font-family: fantasy;
		font-style: oblique;
		font-variant: normal;
		font-weight: bold;
		font-size: 20px;
	}
	body {
		text-align: center;
	}
}
</style>





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

	<%-- 
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
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
					<li><a href="home"><span class="glyphicon glyphicon-Home"></span>
							Home</a></li>

					<li class="menu-item active"><a href="about">About </a></li>

					<li class="menu-item"><a href="contact">Contact </a></li>
				</ul>

				<!-- DROPDOWN LOGIN STARTS HERE  -->
				${message}
				<ul id="signInDropdown" class="nav navbar-nav navbar-right">

					<li><a href="memberShip"><span
							class="glyphicon glyphicon-user"></span> Register</a></li>
					<li><a href="loginHere"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>

				</ul>
			</div>
		</div>
	</div>
 --%>

	<!-- DC Mega Menu Start-->
	<ul id="dc_mega-menu-lightblue" class="dc_mm-lightblue">
		<li><a href="home">Home</a></li>
		<li><a href="about">About</a></li>
		<li><a href="contact">Contact</a></li>
		<li><a href="memberShip">Register</a></li>
		<li><a href="loginHere">Login</a></li>

	</ul>
	<!--DC Mega Menu End -->


	<div id="registerHere">

		<c:if test="${isUserClickedRegisterHere==true}">
			<center>
				<%@ include file="/views/memberDetails.jsp"%>
			</center>
		</c:if>
	</div>

	<div id="loginHere">
		<c:if test="${isUserClickedLoginHere==true}">
			<center>
				<%@ include file="/views/login.jsp"%>
			</center>
		</c:if>
	</div>

	<div id="admin">

		<c:if test="${isAdmin==true}">
			<center>
				<%@ include file="/views/adminHome.jsp"%>
			</center>
		</c:if>



		<c:if test="${isAdmin==false}">

			<%@ include file="/views/productlist.jsp"%>

		</c:if>
	</div>


	<div id="categories">
		<c:if test="${isAdminClickedCategories==true}">
			<%@ include file="/views/adminHome.jsp"%>
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
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>



	<h2>Britt: your destination for all things ethnic</h2>
	<h3>Britt celebrates everything ethnic and is designed to capture
		the essence of India by connecting local artisans and designers
		directly to global customers. We believe in catering to the diverse
		preferences of our customers and ensuring a great online shopping
		experience. Britt helps customers discover and buy products that are
		not easily available to them today.</h3>
	</p>
	<p>
	<h3>If your heart beats for the timeless saree, you can feast on
		our rich collection of Designer Sarees, Kanchivaram Sarees, Wedding
		Sarees and Bollywood Sarees. We also boast of an exquisite collection
		of Lehengas including Designer and Bridal Lehengas. Those who are
		comfortable with salwar suits need not lose heart. Craftsvilla.com
		lets you choose from a treasure trove of elegant Anarkali Suits,
		trendy Palazzo Suits and stylish Straight Suits.</h3>
	</p>

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
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>






	<footer>
		<p1>Copyright � Britt:ShopOnline 2016</p1>


		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>


	</footer>
</body>
</html>
