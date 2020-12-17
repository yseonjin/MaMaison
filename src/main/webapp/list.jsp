<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
      	<h2> 게시판 : 나만의 서랍 </h2>
      	<br>
      	  <table border=1 id="table_list">
      	  	<tr>
      	  		<td> 제목 </td> <td> 파일 </td> <td> 작성일 </td> <td> 상세보기 </td>
      	  	</tr>
      	  	<c:forEach items="${flist}" var="f">
      	  	<tr>
      	  		<td width=200> ${f.getTitle()} </td> 
      	  		<td width=200> <img src="./file/${f.getFile_path()}" width=100 height=100 > </td>
				<td width=200> ${f.getDt()}</td>
				<td width=200> <a href="list_content.do?seq=${f.getSeq()}"><input type="button" value="상세보기"></a></td>				
      	  	</tr>
      	 	</c:forEach>	
      	  	<tr>
      	  		<td colspan=4 align="center" >
 				    <a href="upload.jsp"><input type="button" value="글추가하기"></a>
      	  		</td>
      	  	</tr>
		</table> 
		<br>
			<a href="list.do?now_page=${page.pre_page}">이전</a>&emsp;
			<c:forEach var="i" begin="${page.start_page}" end="${page.end_page}" step="1">
				<a href="list.do?now_page=${i}">${i}</a>&emsp;
			</c:forEach>
			<a href="list.do?now_page=${page.next_page}">다음</a>&emsp;
	   </div>
      </div>
     </section>
    </div>	
</div>
<c:import url="./bottom.jsp"></c:import>