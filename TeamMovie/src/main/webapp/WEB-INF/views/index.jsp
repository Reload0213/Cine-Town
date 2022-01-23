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
	<a href="${pageContext.request.contextPath}/admin/admin">관리자 테스트로 이동</a>
	<a href="${pageContext.request.contextPath}/member/myPage">유저 페이지로 이동</a>	
	<a href="${pageContext.request.contextPath}/member/signin">유저 페이지로 이동</a>	
	<h3>김용현 01-23 10:25</h3>
	<a href="${pageContext.request.contextPath}/goods/goodsDetail">굿즈디테일페이지</a>
	<a href="${pageContext.request.contextPath}/goods/goodsMain">굿즈메인페이지</a>
	<a href="${pageContext.request.contextPath}/goods/goodsMenu">굿즈메뉴페이지</a>
	<a href="${pageContext.request.contextPath}/adminShop/adminShopCreatePage">관리자 상품생성 페이지</a>
	<a href="${pageContext.request.contextPath}/adminShop/adminShopCRUDPage">관리자 상품CRUD 페이지</a>
	<!-- 김용현 담당 페이지 종료. 디자인, 사진 절대경로수정완료. 디자인 깨지는 부분 수정 완료했습니다. -->
		<%@ include file="include/header.jsp" %>
		<h1>이영주 push커밋테스트</h1>
		<h1>김근형 커밋 테스트</h1>
		<h1>이영주 커밋 테스트</h1>
</body>
</html>