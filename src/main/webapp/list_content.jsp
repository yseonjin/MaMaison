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
      	<h2> 게시판 : 수정하기 </h2>
      	<br>
      	  <form class="form-horizontal" action="upload_edit.do" method="POST" enctype="multipart/form-data" >
      	  <table id="table_diary">
      	  	<tr>
      	  		<td width="70">
      	  			&emsp;제목  :
      	  		</td>
      	  		<td>
      	  			<input type="text" name="title" value="${c.getTitle()}" size=20>
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td rowspan=2>
      	  			&emsp;파일 :
      	  		</td>
      	  		<td>
      	  			<input type="file" name="uploadFile" value="" >
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
					<img src="./file/${c.getFile_path()}" width=50 height=50 >      	  		
				</td>
      	  	</tr>
      	  	<tr>
      	  		<td>
      	  			&emsp;글쓰기  :
      	  		</td>
      	  		<td>
      	  			<textarea rows="10" cols="100" name="content" id="diary_text" >${c.getContent()}</textarea>
      	  		</td>
      	  	<tr>
      	  		<td>
      	  			&emsp;작성일자<br>(수정불가)  :
      	  		</td>
      	  		<td>
      	  			<input type="text" name="dt" value="${c.getDt()}" size=20 readonly="readonly">
      	  		</td>
      	  	</tr>
      	  	<tr>
      	  		<td colspan=2 align="center">
      	  			<input type="hidden" name="seq" value="${c.getSeq()}">
      	  			<input type="submit" value="수정완료">&emsp;&emsp;
 				    <a href="upload_delete.do?seq=${c.getSeq()}"><input type="button" value="삭제하기"></a>
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