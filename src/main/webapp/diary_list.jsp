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
      	<h2> Diary : 일기장 </h2> &emsp; <a href="diary.jsp"><input type="button" value="일기쓰기"></a>
      	<br>
      	<form action="date_list.do" >
      		<input type="submit" name="baseDate" value="${m.date1}">&emsp;
      		<input type="submit" name="baseDate" value="${m.date2}">&emsp;
      		<input type="submit" name="baseDate" value="${m.date3}">&emsp;
      		<input type="submit" name="baseDate" value="${m.date4}">&emsp;
      		<input type="submit" name="baseDate" value="${m.date5}">
      	</form>
      	 <c:if test="${c.title != null}">
      	  <table id="table_diary">
      	  	<tr>
      	  		<td width="70">
      	  			&emsp;제목  :
      	  		</td>
      	  		<td>
      	  			${c.title}
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			&emsp;날짜  :
      	  		</td>
      	  		<td>
					${c.dt}
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			&emsp;기분  :
      	  		</td>
      	  		<td>
      	  			${c.condition}
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			&emsp;글내용  :
      	  		</td>
      	  		<td>
      	  			${c.content}
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td colspan=2 align="center">
      	  			<a href="diary_edit.do?seq=${c.seq}"><input type="button" value="수정하기"></a>&emsp;&emsp;
      	  			<a href="diary_delete.do?seq=${c.seq}&dt=${c.dt}"><input type="button" value="삭제하기"></a>&emsp;&emsp;
      	  		</td>
      	  	</tr>
		 </table>
      	</c:if>
      	<c:if test="${c.title == null}">
      	  <table id="table_diary">
      	 	<tr>
      	 		<td align="center">표시할 일기가 없습니다 ㅠ.ㅠ!</td>
      	 	</tr>
      	  </table>
      	</c:if>
	  </div>
      </div>
     </section>
    </div>	
</div>
<c:import url="./bottom.jsp"></c:import>