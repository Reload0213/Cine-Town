<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<!-- 페이지 작성자 김정민 -->
<head>
<!--현 페이지 소스-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/loginRegister/style.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/loginRegister/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!--현 페이지 소스-->
<style>
.login {
	background-color: #0b0c2a;
}
</style>
</head>

<body>
	<%@ include file="../include/header.jsp"%>
	<!-- Login Section Begin-->
	<section class="login spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6"  style="color: white; margin: 0 auto; text-align:center" >
				<h3>고객님의 아이디는</h3>
				<h6 style="margin: 50px 0;">${userVO.userId} 입니다</h6>
				
				<!-- <button type="submit" class="site-btn">비밀번호 찾기</button> -->
				<a href="${pageContext.request.contextPath}/user/signin"
					class="site-btn">로그인하러 가기</a> <br /> <a
					href="${pageContext.request.contextPath}/user/findUser"
					style="color: white;">비밀번호 찾기</a>
			</div>
			</div>


			
		</div>

	</section>
	<!-- Login Section End -->
	<%@ include file="../include/footer.jsp"%>


	<!--현 페이지 스크립트-->

	<!--현 페이지 스크립트-->
</body>

</html>