<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      	<h2> 회원정보수정 </h2>
      	<br>
      	  <form class="form-horizontal" action="user_edit.do" method="post" >
      	  
      	  <table id="table_login">
      	  	<tr>
      	  		<td>
      	  			ID (수정불가)
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="Id" name="id" value="${user.id}" readonly="readonly">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			PASSWORD
      	  		</td>
      	  		<td>
      	  			<input type="password" placeholder="Password" name="pwd" value="${user.pwd}">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			NAME
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="Name" name="name" value="${user.name}">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			PHONE
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="010-0000-0000" name="phone" value="${user.phone}"> 
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			ADDRESS
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="서울시 중구..." name="address" size=20 value="${user.address}">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			E-MAIL
      	  		</td>
      	  		<td>
      	  			<input type="text" placeholder="aaa@gmail.com" name="email" size=20 value="${user.email}">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td colspan=2>
      	  			<input type="hidden" name=seq value="${user.seq}">
      	  			<input type="submit" value="수정하기완료">&emsp;&emsp;
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