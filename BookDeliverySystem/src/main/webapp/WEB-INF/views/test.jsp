<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
테스트화면
<a href="./loginPage.do">로그인하기</a>
${dto.book_seq}
${sessionScope.loginVo}
</body>
</html>