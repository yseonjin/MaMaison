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
      	  <form class="form-horizontal" action="join_insert.do" >
      	  
      	  <table id="table_login">
      	  	<tr>
      	  		<td>ID</td> <td>${user.id}</td>
      	  	</tr>
      	  	<tr>
      	  		<td>NAME</td> <td>${user.name}</td>
      	  	</tr>
      	  	<tr>
      	  		<td>PHONE</td> <td>${user.phone}</td>
      	  	</tr>
      	  	<tr>
      	  		<td>ADDRESS</td> <td>${user.address}</td>
      	  	</tr>
      	  	<tr>
      	  		<td>E-MAIL</td> <td>${user.email}</td>
      	  	</tr>
      	  	<tr>
      	  		<td colspan=2>
      	  			<a href="user_master2.do"><input type="button" value="회원정보수정"></a>&emsp;&emsp;
      	  			<a href="user_delete.do?seq=${user.seq}"><input type="button" value="회원탈퇴"></a>
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