<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<h1>안녕하세요 Spring MVC</h1>
	<img alt="springimg" src="${pageContext.request.contextPath}/resources/img/logo/icon-Spring-Framework.svg">
	<h1>김정민 1시 50분 수정</h1>
	<h1>김용현 안녕하세요</h1>
	<a href="${pageContext.request.contextPath}/admin/main">관리자 테스트로 이동</a>
	<a href="${pageContext.request.contextPath}/member/myPage">유저 페이지로 이동</a>	
	<a href="${pageContext.request.contextPath}/member/signin">유저 페이지로 이동</a>	
	<a href="${pageContext.request.contextPath}/goods/goodsDetail">굿즈디테일페이지</a>
	<%@ include file="include/footer.jsp" %>
</body>
</html>