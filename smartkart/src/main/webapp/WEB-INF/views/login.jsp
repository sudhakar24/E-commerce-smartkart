<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>

.btn-success.btn-outline {
    color:white !important;
}






</style>
</head>
<jsp:include page="header.jsp"></jsp:include>

<body>
<div id="container" style=width:30%;height:40px;margin-top:120px;margin-left:auto;margin-right:auto;background-color:black; align="center">
<h3 style=color:white; align="center">Welcome Back!!! Login</h3>

</div>
<form action="${pageContext.request.contextPath}/login" method="post">
<div id="con" style=width:30%;margin:auto;padding-top:30px;background-color:#EEEEEE;>
<div id="fok" style=width:20%;padding-left:20px;float:left;background-color:#EEEEEE;>
<h4>User ID</h4>
</div>
<div id="pop" style=width:70%;float:left;background-color:#EEEEEE;padding-left:15px;>
 <input id="usernameinput" type="text" placeholder="Emai-Id" class="form-control input-md" required/>
</div>
<div id="po" style=width:10%;float:left;background-color:#EEEEEE;>
<h1></h1>
</div>
</div>
<div id="lol" style=width:30%;margin:auto;padding-top:60px;background-color:#EEEEEE;>
<div id="oio" style=width:20%;padding-left:20px;float:left;background-color:#EEEEEE;>
<h4>Password</h4>
</div>
<div id="ppp" style=width:70%;float:left;background-color:#EEEEE;padding-left:15px;>
<input id="passwordinput" type="password" placeholder="password" class="form-control input-md" required/>
</div>
<div id="poo" style=width:10%;float:left;background-color:#EEEEEE;>
<h1></h1>
</div>
</div>
<div id="loll" style=width:30%;margin:auto;padding-top:70px;background-color:#EEEEEE;>

<button style=width:50%;margin-left:25% !important; class="btn btn-success btn-outline" type="submit">Login</button>

</div>
</form>
<div id="lolll" style=width:30%;margin:auto;padding-top:20px;background-color:#EEEEEE;>
</div>
<div  style=width:100%;height:2px;margin-top:250px;background:black;></div>

</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>