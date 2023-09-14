<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 세션에서 loginVo 속성을 불러옴 -->
<c:set var="loginVo" value="${sessionScope.loginVo}"/>
bookListHaeun bookDetailHaeun
<!-- loginVo 객체의 속성(필드) 값을 출력 -->
test: ${loginVo.user_email} <br>
test: ${loginVo.user_seq} <br>
test: ${loginVo.user_name} <br>

<button onclick="location.href='./userRentList.do?user_seq=${loginVo.user_seq}'">대출목록조회</button>
<button onclick="location.href='./userResveList.do?user_seq=${loginVo.user_seq}'">예약순번조회</button>

<button onclick="location.href='./adminRentList.do'">관리자 대출조회</button>
  <br>
  <br>
  <table>
    <thead>
      <tr>
        <th>도서 번호</th>
        <th>도서 제목</th>
        <th>작가</th>
        <th>ISBN</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${books}" var="book">
        <tr>
			<td>${book.book_seq}</td>
			<td><a href="./bookDetailHaeun.do?seq=${book.book_seq}">${book.book_title}</a></td>
			<td>${book.book_writer}</td>
         	 <td>${book.book_isbn}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>