<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='./css/header.css'/>
</head>
<body>

<!-- 헤더 전체 div -->
<div style="height: 20vh;">

<!-- 헤더 첫번째 div -->
	<div class="flex-container" id="header">
		<div class="topLogo" ></div>
		<div>
			<h1 class="mainTitle"> <a class="a" href="./index.jsp"> 계발의민족 </a></h1>
		</div>
		<div class="topLogo" id="loginBtn" style="margin-top: 30px;">
			
			<!--로그인 상태확인 -->
			<c:choose>
				<c:when test="${loginDto == null}">
			    <button class="btn"
				onclick="location.href='./nomalRegistForm.do'">회원가입</button>
					<button class="btn" id="loginButton"
						onclick="location.href='./loginPage.do'">로그인</button>
				</c:when>
				<c:otherwise>
					<span> 
						${loginDto.user_name} 님 환영합니다. &nbsp;&nbsp;
						대출상태 : <a href="./userRentPageList.do"> ${userStatus.RENT_STATUS} </a>&nbsp;&nbsp;
						예약상태 : <a href="./userResvePageList.do"> ${userStatus.RESVE_STATUS} </a> &nbsp;&nbsp;
					 </span>
					<button class="btn" id="logoutButton"
						onclick="location.href='./logout.do'">로그아웃
					</button>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	
	<!-- 헤더 두번째 div -->

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header"></div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="./home.do">Home</a></li>


				<li><a href="./freeBoardList.do">자유게시판</a></li>
				<li><a href="./userBookList.do">도서목록</a></li>
				<li><a href="./userPayPageList.do">결제내역</a></li>
				<li><a href="./faqList.do">FAQ</a></li>
				
			</ul>
		</div>
	</nav>
	
	</div>
</body>
	<script type="text/javascript" src="js/header.js"></script>
</html>