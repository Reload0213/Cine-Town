<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<!-- Login Section Begin -->
	<section class="login spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login__form">
						<h3>회원가입에 성공하였습니다. 로그인을 해 주세요</h3>
						<form action="#">
							<div class="input__item">
								<input type="text" placeholder="아이디를 입력해주세요" required> <span><i
									class="xi-user-o"></i></span>
							</div>
							<div class="input__item">
								<input type="text" placeholder="비밀번호를 입력해주세요" required>
								<span><i class="xi-lock-o"></i></span>
							</div>
							<a href="user/findUser" class="forget_pass"
								style="font-size: 1vh; font-style: italic;">아이디/비밀번호 찾기</a>
							<button type="submit" class="site-btn">로그인</button>
						</form>

					</div>
				</div>
				<div class="col-lg-6" style="text-align: center;">
					<div class="login__register">
						<h3>계정이 없으신가요?</h3>
						<p style="color: white;">지금 가입하시고 다른 사용자들과 함께 영화를 공유해보세요</p>
						<a href="signup.html" class="primary-btn">회원가입</a>
					</div>
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