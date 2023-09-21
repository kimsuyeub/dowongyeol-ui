<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/header.css">
<script type="text/javascript" src="js/resveCancle.js"></script>
<title>Insert title here</title>
</head>
<%@ include file="header.jsp" %>
<body>

<div class="container">
<c:set var="loginUser" value="${sessionScope.loginDto}" />
<c:choose>
    <c:when test="${not empty lists}">
		<h1>${loginUser.user_name}님의 예약 도서 목록 입니다</h1>
            <table border="1">
    <tr>
        <th>No.</th>
        <th>도서명</th>
        <th>예약상태</th>
        <th>예약순번</th>
        <th>예약취소</th>
        <th>대출신청</th>
    </tr>
    <c:forEach var="resve" items="${lists}"  varStatus="status">
        <tr>
        	<td>${status.index + 1}</td>
            <td>${resve.BOOK_TITLE}</td>
            <td>
			    <c:choose>
			        <c:when test="${resve.RESVE_STATUS eq 'Y'}">예약중</c:when>
			        <c:when test="${resve.RESVE_STATUS eq 'R'}">대출대기</c:when>
			        <c:when test="${resve.RESVE_STATUS eq 'N'}">예약취소</c:when>
			        <c:when test="${resve.RESVE_STATUS eq 'C'}">자동취소</c:when>
			        <c:when test="${resve.RESVE_STATUS eq 'S'}">대출진행완료</c:when>
			    </c:choose>
			</td>
            <td>
            	<c:choose>
            		<c:when test="${resve.RESVE_STATUS eq 'R'}">대출가능</c:when>
            		<c:when test="${resve.RESVE_STATUS eq 'S'}">&nbsp;</c:when>
            		<c:when test="${resve.RESVE_STEP eq 0}">&nbsp;</c:when>
            		<c:otherwise>${resve.RESVE_STEP}</c:otherwise>
            	</c:choose>
            
            </td>
            <td>
			    <c:choose>
			        <c:when test="${resve.RESVE_STATUS eq 'Y'}">
			        <button onclick="cancelReservation(${resve.BOOK_SEQ}, ${loginUser.user_seq})">예약취소</button>
			        </c:when>
			        <c:otherwise></c:otherwise>
			    </c:choose>
			</td>
			<td>
			    <c:choose>
			        <c:when test="${resve.RESVE_STATUS eq 'R'}"><button onclick="location.href = './addr.do?book_seq=' + ${resve.BOOK_SEQ}">대출신청</button></c:when>
			        <c:otherwise></c:otherwise>
			    </c:choose>
			</td>
        </tr>
    </c:forEach>
</table>
    </c:when>
    <c:otherwise>
        <h1>${loginUser.user_name}님은 예약 도서가 없습니다</h1>
    </c:otherwise>
</c:choose>


</div>
</body>
<%@ include file="footer.jsp" %>
</html>