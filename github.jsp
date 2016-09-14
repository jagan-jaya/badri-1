<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="text/image" href="github-9-16.ico" />
<link rel="stylesheet" type="text/css" href="bootstrap.css" />
<title>Github</title>
</head>
<body>
<script src="jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<script src="bootstrap.min.js"></script>
<script>
function display() {
	document.getElementById("abcd").style.display ="block";
	document.getElementById("abcde").style.display ="none";
	document.getElementById("abcdef").style.display ="none";
}
function display1() {
	document.getElementById("abcd").style.display ="none";
	document.getElementById("abcde").style.display ="block";
	document.getElementById("abcdef").style.display ="none";
}
function display2() {
	document.getElementById("abcd").style.display ="none";
	document.getElementById("abcde").style.display ="none";
	document.getElementById("abcdef").style.display ="block";
}

/*function act(){
	 var abc=document.getElementById("val").innerHTML;
	 document.getElementById("asdf").setAttribute("action",abc);
}/*
function resetDOM() {
	var elem = document.getElementsByClassName('btn btn-default');
	for(var i = 0; i < elem.length; i ++) {
		elem[i].style = 'display: none';
	}
}
function myFunction() {
	var elem = document.getElementsByClassName('btn btn-default');
	for(var i = 0; i < elem.length; i ++) {
		if(elem[i].addEventListener) {
			elem[i].addEventListener("click", function(){
				resetDOM();
				document.getElementById(this.getAttribute('data-target')).style = 'display: block';
			});
		}
	}
}
window.addEventListener("load", myFunction);*/
</script>
<%
String user = request.getParameter("username");
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
String password = request.getParameter("password");
if(user == null || password == null) {
	response.sendRedirect("index.jsp");
}
Cookie ck = new Cookie("logged_user", user);
ck.setMaxAge(60*60);
response.addCookie(ck);

} %>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img src="github.ico" /></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
		<!--<li><a class="btn btn-default" href="#" onclick="loginsignupb()" role="button">LogOut</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>-->
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="monitor-32.ico" /><span>  Add New</span> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">New File</a></li>
            <li><a href="#">New Repository</a></li>
            <li><a href="#">New Project</a></li>
            <li role="separator" class="divider"></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img src="stallion-32.ico" /><span>Welcome </span> <%= user %></span> <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a class="btn btn-default" href="#"  role="button">View Profile</a></li>
          <li><a class="btn btn-default" href="#"  role="button">followers</a></li>
          <li><a class="btn btn-default" href="#"  role="button">Something else</a></li>
            <li role="separator" class="divider"></li>
            <li><a class="btn btn-default" href="logout.jsp"  role="button">LogOut</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<ul >
<li><button type="submit" onclick="display()" class="btn btn-default" data-target="btn btn-defaultinsert">Insert</button></li>
<li><button type="submit" onclick="display1()" class="btn btn-default" data-target="btn btn-defaultupdate">Update</button></li>
<li><button type="submit" onclick="display2()" class="btn btn-default" data-target="btn btn-defaultdelete">Delete</button></li>
</ul>
<div id="abcd" style="display:none;">
<form  action="Insert" method="post" style="padding:10px 20% 50% 20%;">
<table class="table table-hover" style="border:2px solid #2980b9;">
	
	<tr >
			<td  colspan="2" align="center" class="bg-primary">
				<h1 id="header" >Insert</h1>
			</td>
	</tr>
		
	
	<tr>
		
			<td ><b>User Name:</b></td>
			<td  ><input  type="text" class="form-control" name="username" required></td>
			
		
	</tr>
	
	<tr >
		
			<td ><b>Password:</b></td>
			<td ><input type="Password" class="form-control"  name="password" required></td>
	
	</tr>
	
	<tr>
	<td colspan="2" align="center">
	<input  class="btn btn-primary" type="submit" value="Insert"></td>
	</tr>
</table>
</form>
</div>
<div id="abcde" style="display:none;">
<form  action="updateuser" method="post" style="padding:10px 20% 50% 20%;">
<table class="table table-hover" style="border:2px solid #2980b9;">
	
	<tr >
			<td  colspan="2" align="center" class="bg-primary">
				<h1 id="header" >Update</h1>
			</td>
	</tr>
		
	
	<tr>
		
			<td ><b>User Name:</b></td>
			<td  ><input  type="text" class="form-control" name="username" required></td>
			
		
	</tr>
	
	<tr >
		
			<td ><b>Password:</b></td>
			<td ><input type="Password" class="form-control"  name="password" required></td>
	
	</tr>
	
	<tr>
	<td colspan="2" align="center">
	<input  class="btn btn-primary" type="submit" value="Update"></td>
	</tr>
</table>
</form>
</div>

<div id="abcdef" style="display:none;">
<form   action="deleteuser" method="post" style="padding:10px 20% 50% 20%;">
<table class="table table-hover" style="border:2px solid #2980b9;">
	
	<tr >
			<td  colspan="2" align="center" class="bg-primary">
				<h1>Delete Account</h1>
			</td>
	</tr>
		
	
	<tr>
		
			<td ><b>User Name:</b></td>
			<td  ><input  type="text" class="form-control" name="username" required></td>
			
		
	</tr>
	
	<tr>
	<td colspan="2" align="center">
	<input class="btn btn-primary" type="submit" value="Delete"></td>
	</tr>
</table>
</form>
</div>
</body>
</html>