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
			  	  <li><a href="join.jsp"><i class=" icon-ok-sign icon-white"></i>&emsp;Join US</a></li>
				  <li><br></li>
	           <c:if test="${id != null}">
				  <li><a href="date_list.do?baseDate=2020-12-13"><i class="icon-book icon-white"></i>&emsp;Diary</a></li>
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
    <div align="center">>
      <div class="span10">
      	<!--Body content-->
      	  <br><br><br>
      	  <table id="table_login_ok">
      	  	<tr>
      	  		<td><h1>회원탈퇴가 완료되었습니다!</h1></td>
      	  	</tr>
      	  	<tr>
      	  		<td><a href="home.jsp"><i class="icon-home icon-white"></i>&emsp;Home</a></td>
      	  	</tr>
      	  </table>    	  	
      </div>
     </div>
     </section>
    </div>	
</div>
<c:import url="./bottom.jsp"></c:import>