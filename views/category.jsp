<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
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
<title>Category Page</title>
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
	font-style:italic;
	text-align: center;
	color: purple;
}
h3{
font-style:italic;
color:purple;
font-size: 30px;
}
body {
	background-color: silver;
}
</style>






<!-- DC Mega Menu CSS -->
<link type="text/css" rel="stylesheet" href="http://cdn.dcodes.net/2/menus/mega/css/dc_mega_menu_lightblue.css" />
<!-- jQuery Library (skip this step if already called on page ) -->
<script type="text/javascript" src="http://cdn.dcodes.net/2/jquery.min.js"></script> <!-- (do not call twice) -->
<!-- DC Mega Menu JS -->
<script type="text/javascript" src="http://cdn.dcodes.net/2/menus/mega/js/jquery.hoverIntent.minified.js"></script>
<script type="text/javascript" src="http://cdn.dcodes.net/2/menus/mega/js/dc_mega_menu.js"></script>
<script type="text/javascript">
  $(document).ready(function($){
$('#dc_mega-menu-lightblue').dcMegaMenu({rowItems:'3',speed:'fast',effect:'fade'});
 });
</script>






</head>
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
						<li class="menu-item active"><a href="suppliers">Supplier
						</a></li>
						<ul class="nav navbar-nav">
							<li class="menu-item"><a href="products">Product
							</a></li>


						</ul>
					</ul>

				</ul>

				DROPDOWN LOGIN STARTS HERE 

				<ul id="signInDropdown" class="nav navbar-nav navbar-right">


					<li><a href="onLoad"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	 -->
	
	
	<!-- DC Mega Menu Start-->
	<ul id="dc_mega-menu-lightblue" class="dc_mm-lightblue">
		<li><a href="onLoad">Home</a></li>
		<li><a href="#">Hi ${loggedInUser}</a></li>
		<li><a href="suppliers">Supplier</a></li>
		<li><a href="products">Product</a></li>
		<li><a href="onLoad">Logout</a></li>
		
	</ul>
	<!--DC Mega Menu End -->
	</br>
	</br>

	<div class="container">

		<h1>Add a Category</h1>

		<c:url var="addAction" value="/category/add"></c:url>

		<form:form action="${addAction}" commandName="category">
			<table align="center">
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td></tr>
					<c:choose>
						<c:when test="${!empty category.id}">
							<td><form:input path="id" disabled="true" readonly="true" />
							</td>
						</c:when>

						<c:otherwise>
							<td><form:input path="id" pattern=".{4,7}" required="true"
									title="id should contains 4 to 7 characters" /></td>
						</c:otherwise>
					</c:choose>
				<tr>
					<form:input path="id" hidden="true" />
					<td><form:label path="name">
							<spring:message text="Name" />
						</form:label></td></tr>
					<td><form:input path="name" required="true" /></td>
				</tr>
				<tr>
					<td><form:label path="description">
							<spring:message text="Description" />
						</form:label></td></tr>
					<td><form:input path="description" required="true" /></td>
				</tr>
				<tr>
					<td colspan="2"><c:if test="${!empty category.name}">
							
								<button type="submit" class="btn btn-warning" value="<spring:message text="Add Category"/>">Edit Category </button>
								
						</c:if> <c:if test="${empty category.name}">
							<!-- <input type="submit"
								value="<spring:message text="Add Category"/>" /> -->
								<button type="submit" class="btn btn-success" value="<spring:message text="Add Category"/>">Add Category </button>

						</c:if></td>
				</tr>
			</table>
		</form:form>
		<br>
		<h3 align="center">Category List</h3>
		<c:if test="${!empty categoryList}">
			<table class="tg"   align="center" >
				<tr>
					<th width="80">Category ID</th>
					<th width="120">Category Name</th>
					<th width="120">Category Description</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${categoryList}" var="category">
					<tr>
						<td>${category.id}</td>
						<td>${category.name}</td>
						<td>${category.description}</td>
						<td><a href="<c:url value='category/edit/${category.id}' />"><button type="button" class="btn btn-primary">Edit</button></a></td>
						<td><a
							href="<c:url value='category/remove/${category.id}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>


	</div></br>

	<footer>
		<p>Copyright � Britt:ShopOnline 2016</p>
		
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>
		
		
	</footer>
</body>
</html>