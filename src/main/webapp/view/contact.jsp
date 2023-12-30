<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mayur Ghanghav</title>
</head>
<body>
<center>
	

<br>
<a href="homePage">home</a>
<a href="aboutpage">about</a>
<a href="coursepage">course</a>
<a href="contactpage">contact</a>
<a href="mayurpage">logout</a>

<h1><font color="Brown" >Contact Page</font></h1>

<form action="contact" method="post">
	name<input type="text" name="name">
	address<input type="text" name="address">
	email<input type="text" name="email">
	mobile<input type="text" name="mobile">
	<input type="submit" value="submit">
	<input type="reset" value="reset">
	
		
	</form>
</center>
</body>
</html>

<style>
body{
background-image: url(img/Back-G.jpg);
background-repeat: no-repeat;
background-attachment: fixed;
background-size: cover;

}