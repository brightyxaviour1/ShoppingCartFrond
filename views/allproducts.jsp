<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Collaborative Product Info</title>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
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


<script>
	var app = angular.module('myApp', []);

	function MyController($scope, $http) {

		$scope.sortType = 'name'; // set the default sort type
		$scope.sortReverse = false; // set the default sort order
		$scope.searchPName = ''; // set the default search/filter term

		$scope.getDataFromServer = function() {
			$http({
				method : 'GET',
				url : 'GsonConvert'
			}).success(function(data, status, headers, config) {
				$scope.Products = data;
				alert(data);
			}).error(function(data, status, headers, config) {

			});

		};
	};
</script>
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
</style>

<style>
body {
	padding-top: 50px;
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
					<li><a href="onLoad"><span
							class="glyphicon glyphicon-home"></span> HOME</a></li>
					<ul class="nav navbar-nav">
						<li class="menu-item active"><a href="about">About
						</a></li>
						<ul class="nav navbar-nav">
							<li class="menu-item"><a href="contact">Contact
							</a></li>

							<li><a href="myCart"><span
									class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>
						</ul>
					</ul>

				</ul>

				<!-- DROPDOWN LOGIN STARTS HERE  -->
				${message}
				<ul id="signInDropdown" class="nav navbar-nav navbar-right">

					<li><a href="views/register.jsp "><span
							class="glyphicon glyphicon-user"></span> sign up</a></li>
					<li><a href="login"><span
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


	</br>


	<div class="container" ng-app="myApp" ng-controller="MyController">



		<form>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-search"></i>
					</div>
					<input type="text" class="form-control"
						placeholder="Search Product Name" ng-model="searchPname">
					<button ng-click="getDataFromServer()">Fetch Data</button>
				</div>
			</div>
		</form>
		<div ng-init="getDataFromServer();">
			<table class="table table-bordered table-striped">

				<thead>
					<tr>




						<td><a href="#"
							ng-click="sortType = 'pName'; sortReverse = !sortReverse">
								<h4 color="black">ProductName</h4> <span
								ng-show="sortType == 'pName' && !sortReverse"
								class="fa fa-caret-down"></span> <span
								ng-show="sortType == 'pName' && sortReverse"
								class="fa fa-caret-up"></span>
						</a></td>
						<td><a href="#"
							ng-click="sortType = 'pDescription'; sortReverse = !sortReverse">
								<h4 color="black">Description</h4> <span
								ng-show="sortType == 'pDescription' && !sortReverse"
								class="fa fa-caret-down"></span> <span
								ng-show="sortType == 'pDescription' && sortReverse"
								class="fa fa-caret-up"></span>
						</a></td>
						<td><a href="#"
							ng-click="sortType = 'price'; sortReverse = !sortReverse">
								<h4 color="black">Price</h4> <span
								ng-show="sortType == 'Price' && !sortReverse"
								class="fa fa-caret-down"></span> <span
								ng-show="sortType == 'Price' && sortReverse"
								class="fa fa-caret-up"></span>
						</a></td> <
						<td><a href="#"
							ng-click="sortType = 'price'; sortReverse = !sortReverse">
								<h4 color="black">Add To Cart</h4> <span
								ng-show="sortType == 'price' && !sortReverse"
								class="fa fa-caret-down"></span> <span
								ng-show="sortType == 'price' && sortReverse"
								class="fa fa-caret-up"></span>
						</a></td>


					</tr>
				</thead>

				<tbody>
					<tr
						ng-repeat="roll in Products | orderBy:sortType:sortReverse | filter:searchPname">

						<b><td>{{ roll.pName }}</td> </b>
						</b>
						<td>{{ roll.pDescription }}</td>
						</b>
						</b>
						<td>{{ roll.price }}</td>
						</b>
						</b>
						<!--  <a href=""> <input type="submit" value="Edit"></a>
							&nbsp-->
						<td><a href="loginHere">
								<button type="submit" class="btn btn-success"
									values="Add to cart">Add to cart</button>
						</a>
						<!--  &nbsp </b> <a href=""> <input type="submit" value="Delete"></a>-->
						</td>

						<!-- <td><a href="MoreInfo">More Info</a></td>  -->
					</tr>
				</tbody>

			</table>
		</div>

	</div>
	<footer>
		<p1>Copyright © Britt:ShopOnline 2016</p1>


		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>


	</footer>
</body>
</html>