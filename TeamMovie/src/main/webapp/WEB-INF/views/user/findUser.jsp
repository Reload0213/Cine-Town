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

.login__form {
	padding-left: 0
}

.spancss {
	color: blue;
}

.login__form:after {
	display: none;
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
						<form:form modelAttribute="userVO" id="findPw_form">

							<div class="id_wrap">
								<div class="input__item">
									<form:input path="userId" placeholder="아이디를 입력해주세요"
										class="id_input" />
									<span><i class="xi-user-o"></i></span>
								</div>
								<div class="spancss">
									<span class="id_input_re_1">아이디가 존재하지 않습니다.</span> <span
										class="id_input_re_2">아이디 확인 완료.</span> <span
										class="final_id_ck">아이디를 입력해주세요.</span>
								</div>
							</div>
							<br />
							<div class="name_wrap">
								<div class="input__item">
									<form:input path="userName" placeholder="이름 입력해주세요"
										class="name_input" />
									<span><i class="xi-user-o"></i></span>
								</div>
								<div class="spancss">
									<span class="name_input_re_1">이름이 존재 하지 않습니다.</span> <span
										class="name_input_re_2">이름 확인 완료.</span> <span
										class="final_name_ck">이름을 입력해주세요.</span>
								</div>
							</div>

							<br />
							<form:button class="findPw_btn site-btn">비밀번호 찾기</form:button>

						</form:form>
						<span class="pwhere"></span>

					</div>
				</div>


				<div class="col-lg-6">
					<div class="login__form">
						<h3>아이디 찾기</h3>
						<form:form modelAttribute="userVO" id="findId_form">


							<div class="name_wrap">
								<div class="input__item">
									<form:input path="userName" placeholder="이름 입력해주세요"
										class="name2_input" />
									<span><i class="xi-user-o"></i></span>
								</div>
								<div class="spancss">
									<span class="name2_input_re_1">이름이 존재 하지 않습니다.</span> <span
										class="name2_input_re_2">이름 확인 완료.</span> <span
										class="final_name2_ck">이름을 입력해주세요.</span>
								</div>
							</div>
							<br />
							<div class="email_wrap">
								<div class="input__item">
									<form:input path="userEmail" class="email_input"
										placeholder="이메일을 입력해주세요" />
									<span><i class="xi-mail-o"></i></span>
								</div>
								<div class="spancss">
									<span class="email_input_re_1"> 이메일이 존재하지 않습니다</span> <span
										class="email_input_re_2">이메일 확인 완료.</span> <span
										class="final_email_ck">이메일을 입력해주세요.</span>
								</div>
							</div>
							<br />
							<form:button class="findId_btn site-btn">아이디 찾기</form:button>

						</form:form>

					</div>
				</div>



			</div>

		</div>
	</section>
	<!-- Login Section End -->
	<%@ include file="../include/footer.jsp"%>


	<!--현 페이지 스크립트-->



	<script>
		var idCheck = false; // 아이디
		var idckCheck = false; // 아이디 존재 검사
		var nameCheck = false; // 이름
		var nameckCheck = false; // 이름 존재 검사
		var emailCheck = false; // 이름
		var emailckCheck = false; // 이름 존재 검사

		$('.final_id_ck').css('display', 'none');
		$('.final_name_ck').css('display', 'none');
		$('.final_name2_ck').css('display', 'none');
		$('.final_email_ck').css('display', 'none');

		$('.id_input_re_1').css('display', 'none');
		$('.id_input_re_2').css('display', 'none');

		$('.name_input_re_1').css('display', 'none');
		$('.name_input_re_2').css('display', 'none');

		$('.name2_input_re_1').css('display', 'none');
		$('.name2_input_re_2').css('display', 'none');

		$('.email_input_re_1').css('display', 'none');
		$('.email_input_re_2').css('display', 'none');

		//비번찾기
		$(document)
				.ready(
						function() {
							$(".findPw_btn")
									.click(
											function() {
												var id = $('.id_input').val(); //id 입력란
												var name = $('.name_input')
														.val(); // 이름 입력란

												/* 아이디 유효성검사 */
												if (id == "") {
													$('.final_id_ck').css(
															'display', 'block');
													idCheck = false;
												} else {
													$('.final_id_ck').css(
															'display', 'none');
													idCheck = true;
												}

												/* 이름 유효성 검사 */
												if (name == "") {
													$('.final_name_ck').css(
															'display', 'block');
													nameCheck = false;
												} else {
													$('.final_name_ck').css(
															'display', 'none');
													nameCheck = true;
												}

												/* 최종 유효성 검사 */
												if (idCheck && nameCheck

												) {

													$("#findPw_form")
															.attr("action",
																	"${pageContext.request.contextPath}/user/findPw");
													$("#findPw_form").submit();

												}
												return false;

											})
						});

		//아이디 찾기
		$(document)
				.ready(
						function() {
							$(".findId_btn")
									.click(
											function() {

												var name = $('.name2_input')
														.val(); // 이름 입력란
												var email = $('.email_input')
														.val(); //id 입력란

												/* 이름 유효성 검사 */
												if (name == "") {
													$('.final_name2_ck').css(
															'display', 'block');
													nameCheck = false;
												} else {
													$('.final_name2_ck').css(
															'display', 'none');
													nameCheck = true;
												}

												/* 이메일 유효성검사 */
												if (email == "") {
													$('.final_email_ck').css(
															'display', 'block');
													emailCheck = false;
												} else {
													$('.final_email_ck').css(
															'display', 'none');
													emailCheck = true;
												}

												/* 최종 유효성 검사 */
												if (nameCheck && emailCheck

												) {

													$("#findId_form")
															.attr("action",
																	"${pageContext.request.contextPath}/user/findId");
													$("#findId_form").submit();
												}
												return false;

											})
						});

		//아이디 존재여부
		$('.id_input').focusout(function() {
			var userId = $('.id_input').val(); // id_input에 입력되는 값
			var data = {
				userId : userId
			} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/user/memberIdChk",
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				dataType : "text",
				success : function(result) {
					/* 	console.log("성공 여부" + result);
						console.log(data); */
					if (result != 1) { //아이디가 존재한다
						$('.id_input_re_1').css("display", "inline-block");
						$('.id_input_re_2').css("display", "none");
						$('.final_id_ck').css('display', 'none');
						idckCheck = true;
					} else { // 아이디가 없다.
						$('.id_input_re_2').css("display", "inline-block");
						$('.id_input_re_1').css("display", "none");
						$('.final_id_ck').css('display', 'none');
						idckCheck = false;
					}
				},// success 종료
				error : function() {
					/* console.log("실패");
					console.log(data); */
				}
			}); // ajax 종료	

		});// function 종료

		//이름 존재여부
		$('.name_input').focusout(function() {
			var userName = $('.name_input').val(); // id_input에 입력되는 값
			var data = {
				userName : userName
			} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/user/memberNameChk",
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				dataType : "text",
				success : function(result) {
					/* console.log("성공 여부" + result);
					console.log(data); */
					if (result != 1) { //1은 아이디가 존재한다
						$('.name_input_re_1').css("display", "inline-block");
						$('.name_input_re_2').css("display", "none");
						$('.final_name_ck').css('display', 'none');
						nameckCheck = true;
					} else { // 0은 아이디가 없다.
						$('.name_input_re_2').css("display", "inline-block");
						$('.name_input_re_1').css("display", "none");
						$('.final_name_ck').css('display', 'none');
						nameckCheck = false;
					}
				},// success 종료
				error : function() {
					/* console.log("실패");
					console.log(data); */
				}
			}); // ajax 종료	

		});// function 종료

		//이름 존재여부
		$('.name2_input').focusout(function() {
			var userName = $('.name2_input').val(); // id_input에 입력되는 값
			var data = {
				userName : userName
			} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/user/memberNameChk",
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				dataType : "text",
				success : function(result) {
					/* console.log("성공 여부" + result);
					console.log(data); */
					if (result != 1) { //1은 아이디가 존재한다
						$('.name2_input_re_1').css("display", "inline-block");
						$('.name2_input_re_2').css("display", "none");
						$('.final_name2_ck').css('display', 'none');
						nameckCheck = true;
					} else { // 0은 아이디가 없다.
						$('.name2_input_re_2').css("display", "inline-block");
						$('.name2_input_re_1').css("display", "none");
						$('.final_name2_ck').css('display', 'none');
						nameckCheck = false;
					}
				},// success 종료
				error : function() {
					/* console.log("실패");
					console.log(data); */
				}
			}); // ajax 종료	

		});// function 종료

		//이메일 존재여부
		$('.email_input').focusout(function() {
			var emailName = $('.email_input').val(); // id_input에 입력되는 값
			var data = {userEmail : userEmail} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/user/memberEmailChk",
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				dataType : "text",
				success : function(result) {
					/* console.log("성공 여부" + result);
					console.log(data); */
					if (result != 1) { //1은 아이디가 존재한다
						$('.email_input_re_1').css("display", "inline-block");
						$('.email_input_re_2').css("display", "none");
						$('.final_email_ck').css('display', 'none');
						emailckCheck = true;
					} else { // 0은 아이디가 없다.
						$('.email_input_re_2').css("display", "inline-block");
						$('.email_input_re_1').css("display", "none");
						$('.final_email_ck').css('display', 'none');
						emailckCheck = false;
					}
				},// success 종료
				error : function() {
					/* console.log("실패");
					console.log(data); */
				}
			}); // ajax 종료	

		});// function 종료
	</script>
	<!--현 페이지 스크립트-->
</body>

</html>