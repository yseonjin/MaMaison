<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ma Maison-HOME</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="./css/bootstrap.min.css" rel="stylesheet" media="screen">
    <!-- made design -->
    <link href="./css/basic.css" rel="stylesheet">
</head>

<body>
<div class="container"> 
	<header>
	<img src="./img/home.png" class="img-circle" height=50 width=50>&emsp;&emsp;
	<font size=5>Ma Maison</font>
	</header>
	<div id="login-text"align="right">
		<form class="form-inline" action="login.do">
		  <input type="text" class="input-small" placeholder="ID" name="id">
		  <input type="password" class="input-small" placeholder="Password" name="pwd">&emsp;
		  <button type="submit" class="btn">Log in</button>&emsp;
		</form>
	</div>
</div>