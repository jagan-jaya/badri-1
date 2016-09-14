<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" type="text/css" href="bootstrap.css" />
		<link rel="icon" type="image/ico" href="github.ico">
		<script>
		function loginsignupa()
		{
		var Passport = document.getElementById("abcd");
		var Passporta = document.getElementById("abcde");
        Passporta.style.display = "none";
        Passport.style.display = "block";
		}
		function loginsignupb()
		{
		var Passport = document.getElementById("abcd");
		var Passporta = document.getElementById("abcde");
        Passport.style.display = "none";
        Passporta.style.display = "block";
		}
		</script>
		
	<title>Github</title>
</head>
<body  >
<%! String user = ""; %>
<%
boolean isLogged = false;
Cookie cks[] = request.getCookies();

for(int i = 0; i < cks.length; i++) {
	if(cks[i].getName().equals("logged_user")) {
		isLogged = true;
		user = cks[i].getValue();
		break;
	}
}
if(!isLogged) { 
%>
<nav class="navbar navbar-default" >
		  <div class="container">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="#">
		        <img alt="Brand" src="github.ico" height="24px" width="24px">
		      </a>
		    </div>
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav navbar-right">
			  <li><a class="btn btn-default" href="#" onclick="loginsignupb()" role="button">Login</a></li>
			  <li><a class="btn btn-default" href="#" onclick="loginsignupa()" role="button">Signup</a></li>
		        <!--<li><a href="http:www.hackerearth.com/login">Delete</a></li>
		        <li><a href="loginsignup()">Update</a></li>-->
		      </ul>
		      <form class="navbar-form navbar-left">
		        <div class="form-group">
		          <input type="text" class="form-control" placeholder="Git Search">
		        </div>
		        <button type="submit" class="btn btn-default">search</button>
		      </form>
		    </div>
		  </div>
		</nav>
		
<div id="abcde">
<form   action="github.jsp" style="padding:10px 20% 50% 20%;">
<table class="table table-hover" style="border:2px solid #2980b9;">
	
	<tr >
			<td  colspan="2" align="center" class="bg-primary">
				<h1>Login</h1>
			</td>
	</tr>
		
	
	<tr>
		
			<td ><b>User Name:</b></td>
			<td  ><input type="text" class="form-control" name="username" required></td>
			
		
	</tr>
	
	<tr>
		
			<td ><b>Password:</b></td>
			<td ><input type="Password" class="form-control"  name="password" required></td>
	
	</tr>
	
	<tr>
	<td colspan="2" align="center">
	<input class="btn btn-primary" type="submit" value="Login"></td>
	</tr>
</table>
</form>
</div>
<div id="abcd" style="display: none">
<form   action="http://www.google.com" style="padding:10px 20% 50% 20%;">
<table class="table table-hover" style="border:2px solid #2980b9;">
	
	<tr >
			<td  colspan="2" align="center" class="bg-primary">
				<h1>Sign up</h1>
			</td>
	</tr>
		
	
	<tr>
		
			<td ><b>First Name:</b></td>
			<td  ><input type="text" class="form-control" name="aa" required></td>
			
		
	</tr>
	
	<tr>
		
			<td ><b>Last Name:</b></td>
			<td ><input type="Text" class="form-control"  name="bb" required></td>
	
	</tr>
	<tr>
	
			<td ><b>Age:</b></td>
			<td  ><input type="text" class="form-control" name="cc" required></td>
		
	</tr>
	<tr>
	
			<td ><b>Email:</b></td>
			<td  ><input type="email" class="form-control" name="dd" required></td>
		
	</tr>
	<tr>
	
			<td ><b>Address:</b></td>
			<td  ><textarea class="form-control" name="cc" required></textarea></td>
		
	</tr>
	<tr>
	
			<td ><b>DOJ:</b></td>
			<td  ><input type="text" class="form-control" name="cc" required></td>
		
	</tr>	
	<tr>
	<td colspan="2" align="center" class="bg-primary" >
	<input type="checkbox" required> i accept the terms and conditions </td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input class="btn btn-primary" type="submit" value="Submit"></td>
	</tr>
</table>
</form>
</div>
<% } else {  %>
<span>hi there</span>
<% response.sendRedirect("github.jsp");
 } %>
</body>
</html>