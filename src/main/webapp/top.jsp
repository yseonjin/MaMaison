<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<c:if test="${id == null}">
		<form class="form-inline" action="login.do" method="post">
		  <input type="text" class="input-small" placeholder="ID" name="id">
		  <input type="password" class="input-small" placeholder="Password" name="pwd">&emsp;
		  <button type="submit" class="btn">Log in</button>&emsp;
		</form>
		</c:if>
		<c:if test = "${id != null}">
		  <form class="form-inline" action="logout.do">
			${id} 님 로그인! 환영합니다.
		  <button type="submit" class="btn">Log OUT</button>&emsp;
		</form>
		</c:if>
	</div>
</div>