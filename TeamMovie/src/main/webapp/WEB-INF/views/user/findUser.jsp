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
<!-- Login Section Begin-->
<section class="login spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login__form">
						<h3>비밀번호 찾기</h3>
						<form action="#">
							<div class="input__item">
								<input type="text" placeholder="아이디를 입력해주세요" required> <span><i
									class="xi-user-o"></i></span>
							</div>
							<div class="input__item">
								<input type="text" placeholder="이메일을 입력해주세요" required>
								<span><i class="xi-lock-o"></i></span>
							</div>
							<button type="submit" class="site-btn">비밀번호 찾기</button>
						</form>

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