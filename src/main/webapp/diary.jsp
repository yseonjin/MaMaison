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
      	<br><br>
      	<h2> 오늘의 한마디 </h2>
      	<br>
      	  <form class="form-horizontal" action="diary_insert.do" method="post">
      	  <table id="table_diary">
      	  	<tr>
      	  		<td width="70">
      	  			&emsp;제목  :
      	  		</td>
      	  		<td>
      	  			<input type="text" name="title" size=20>
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			&emsp;날짜  :
      	  		</td>
      	  		<td>
      	  			<input type="date" id="dt" name="dt" size=20 value="">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			&emsp;기분  :
      	  		</td>
      	  		<td>
      	  			<input type="text" name="condition" size=30>
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			&emsp;글쓰기  :
      	  		</td>
      	  		<td>
      	  			<textarea rows="10" cols="100" name="content" id="diary_text" ></textarea>
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td colspan=2 align="center">
      	  			<input type="hidden" value="D" name="c_flag">
      	  			<input type="submit" value="일기쓰기완료">&emsp;&emsp;
 				    <input type="reset" value="다시쓰기">
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
<script>
	document.getElementById('dt').value = new Date().toISOString().substring(0, 10);
</script>