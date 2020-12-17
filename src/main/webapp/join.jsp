<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<style>
		.swal-button 
		{
			background-color: #FFB2D9;
			font-size: 12px;
			text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.3);
		}
	</style>
</head>
<script>
	function functionK(){
	     if (f1.id.value=="") {
	    	swal("ID는 필수입력!", "아이디는 필수입력입니다.", "error");
	    	f1.id.value="";
	        f1.id.focus(); 
	        return  false ;
	     }
	
	     if (f1.pwd.value.length < 4) {
	        swal("비밀번호가 너무 짧아요! ", "비밀번호는 4자이상 입력해주세요", "error");
	        f1.pwd.value="";
	        f1.pwd.focus(); 
	        return  false ;
	     }
	  }
</script>
<c:import url="./top.jsp"></c:import>
<div class="container">
	<div class="row-fluid">
	<nav>
	  <div class="span2">
	      <br><br>
	      <!--Sidebar content-->
	            <ul class="nav nav-list">
			  	  <li><a href="home.jsp"><i class="icon-home icon-white"></i>&emsp;Home</a></li>
				  <li><br></li>
			   <c:if test="${id == null}">
			  	  <li><a href="join.jsp"><i class=" icon-ok-sign icon-white"></i>&emsp;Join US</a></li>
				  <li><br></li>
			   </c:if>
	           <c:if test="${id != null}">
				  <li><a href="date_list.do?baseDate=today"><i class="icon-book icon-white"></i>&emsp;Diary</a></li>
				  <li><br></li>
				  <li><a href="upload.jsp"><i class="icon-plus icon-white"></i>&emsp;사진기록</a></li>
				  <li><br></li>
				  <li><a href="list.do"><i class="icon-list icon-white"></i>&emsp;Photos</a></li>
				  <li><br></li>
				  <li><a href="user_master1.do"><i class=" icon-cog icon-white"></i>&emsp;회원정보수정</a></li>
			   </c:if>
			 </ul>
	   </div>
	</nav>  
    <section>
      <div class="span10">
      	<!--Body content-->
      	<div align="center">
      	<br><br><br>
      	<h2> Join Us! 환영합니다 </h2>
      	<br>
      	  <form class="form-horizontal" action="join_insert.do"  method="post" name="f1" onSubmit="return functionK();">      	  
      	  <table id="table_login">
      	  	<tr>
      	  		<td>
      	  			ID
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="Id" name="id">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			PASSWORD
      	  		</td>
      	  		<td>
      	  			<input type="password" placeholder="Password" name="pwd">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			NAME
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="Name" name="name">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			PHONE
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="010-0000-0000" name="phone">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			ADDRESS
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="서울시 중구..." name="address" size=20>
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			E-MAIL
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="aaa@gmail.com" name="email" size=20>
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td colspan=2>
      	  			<button type="submit" class="btn btn-warning">Join Us</button>&emsp;&emsp;
 				    <button type="reset" class="btn">Reset</button>
      	  		</td>
      	  	</tr>
		</table>
		</form> 
	  </div>
      </div>
     </section>
    </div>	
</div>
<c:import url="./bottom.jsp"></c:import>