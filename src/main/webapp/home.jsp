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
      	<br><br><br><br>
      	<img src="./img/main.jpg" class="img-circle" height=400 width=400>&emsp;&emsp;
      	<br>
      	<div id="main_text">
		  <h1>Hello! I'm Ma Maison</h1>
		  <p>매일매일 간단하게 나를 남길 수 있어요! 
		  <br>나의 모든것을 담아둘 수 있는 사진첩도 함께 선물합니다.</p>
		  <c:if test="${id == null}">
		  <p>
		    <a class="btn btn-info btn-large" href="join.jsp">
		      	Join Us
		    </a>
		  </p>
		  </c:if>
		</div>
      	<br>
      	<address>
		  <strong><i class=" icon-heart"></i>&emsp;MaMaison, Inc.</strong><br>
		  7120 Guro-gu Seoul<br>
		  KOREA, KR 11234100<br>
		  <abbr title="Phone">P:</abbr> (123) 456-7890
		</address>
		 
		<address>
		  <strong><i class=" icon-heart"></i>&emsp;Customer Service</strong><br>
		  <a href="mailto:yseonjin@gmail.com">yseonjin@gmail.com</a>
		</address>
      </div>
     </section>
    </div>	
</div>
<c:import url="./bottom.jsp"></c:import>