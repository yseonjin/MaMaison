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
				  <li><a href="date_list.do"><i class="icon-book icon-white"></i>&emsp;Diary</a></li>
				  <li><br></li>
				  <li><a href="upload.jsp"><i class="icon-plus icon-white"></i>&emsp;Upload</a></li>
				  <li><br></li>
				  <li><a href="list.jsp"><i class="icon-list icon-white"></i>&emsp;My Board</a></li>
				  <li><br></li>
				  <li><a href="#"><i class="icon-pencil icon-white"></i>&emsp;발도장</a></li>
			 </ul>
	   </div>
	</nav>  
    <section>
      <div class="span10">
      	<!--Body content-->
      	  <div align="center">
      	<br><br>
      	<h2> Diary : 일기장 </h2>
      	<br>
      	<form action="date_list.do" >
      		<input type="button" name="basedate" value="${m.date1}">&emsp;
      		<input type="button" name="basedate" value="${m.date2}">&emsp;
      		<input type="button" name="basedate" value="${m.date3}">&emsp;
      		<input type="button" name="basedate" value="${m.date4}">&emsp;
      		<input type="button" name="basedate" value="${m.date5}">
      	</form>
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
      	  			<input type="password" name="condi" size=30>
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
      	  			<button type="submit" class="btn btn-warning">일기쓰기완료</button>&emsp;&emsp;
 				    <button type="reset" class="btn">다시쓰기</button>
      	  		</td>
      	  	</tr>
		</table>
	  </div>
      </div>
     </section>
    </div>	
</div>
<c:import url="./bottom.jsp"></c:import>