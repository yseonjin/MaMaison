<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
  <script>
  function fileCheck1(){
  //만약에 input 값이 공백이 아니면 fildSize와 maxSize를 변수에 저장하고
     if(document.getElementById("ufile").value!=""){
        var fileSize = document.getElementById("ufile").files[0].size;
        var maxSize = 2 * 1024 * 1024;//2MB
	//비교했을때 fileSize가 더 크면 alert실행 return false;
      if(fileSize > maxSize){
         alert("첨부파일 사이즈는" + fileSize + " 2MB 이내로 등록 가능합니다. ");
         return false
       }
    }             
  </script>
</head>
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
      	<h2> 오늘을 저장하세요! </h2>
      	<br>
      	  <form class="form-horizontal" action="upload_insert.do" method="POST" enctype="multipart/form-data" onSubmit="return fileCheck1()">
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
      	  			&emsp;파일 :
      	  		</td>
      	  		<td>
      	  			<input type="file" name="uploadFile" id="ufile">
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
      	  			<input type="hidden" name="c_flag" value="U">
      	  			<button type="submit" class="btn btn-warning">업로드하기</button>&emsp;&emsp;
 				    <button type="reset" class="btn">다시쓰기</button>
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