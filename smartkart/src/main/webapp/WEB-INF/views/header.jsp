<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
li a.ab{
	
	text-transform: captilize;
	letter-spacing: 4px;
	font-weight: bold;
	font-size: 20px;
	font-family: "Bauhaus 93";
	
	}
</style>
</head>
<body>
<nav id="navbar-red" class="navbar navbar-default" role="navigation">
<div class="container-fluid">
<ul class="nav navbar-nav">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-nav">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</ul>
</div>
<div class="collapse navbar-collapse" id="bs-example-nav">
<ul class="nav navbar-nav">
<li><a href="index" class="ab">SmartKart</a><li>
<li><a href="index"><i class="fa fa-home" aria-hidden="true"></i>Home</a><li>
<li><a href="category"><i class="fa fa-list" aria-hidden="true"></i>Category</a>
<li><a href="Supplier">Supplier List</a>
</ul>



<ul class="nav navbar-nav navbar-right">
<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i> Log In</a><li>
<li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a><li>

</ul>
</div>
</nav>
</body>
</html>