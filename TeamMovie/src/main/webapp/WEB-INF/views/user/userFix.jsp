<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 다음 api link 첨부-->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!--  관리자페이지 폰트추가 끝 -->
<!-- 메인 css 추가 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/user/myPage.css">
<style>
.table{
font-size: 62.5%;
}
</style>
<!-- 메인 css 끝 -->

</head>
<body>
	<%@ include file="../include/header.jsp"%>
<div class="textsize"></div>
	<div class="resultTitle">
		<h3>${userVO.userName} 님의 회원정보 수정</h3>
	</div>

	<div class="userInfoCon">
		<div class="topUserCon">

			<div class="table">
				<ul class="topUl row1">

					<li>아이디</li>
					<li>${userVO.userId}</li>

				</ul>
				<ul class="topUl row2">
					<li>가입일자</li>
					<li>${userVO.userRegdate}</li>

				</ul>

				<!-- 구분선 -->

				<ul class="topUl row3 divisionLine">
					<li><input type="hidden" name="userNum" id="userNum"
						value="${userVO.userNum}" /></li>
					<li></li>

				</ul>

				<ul class="topUl row4">
					<li>성명</li>
					<li>${userVO.userName}</li>


				</ul>

				<ul class="topUl row5">
					<li>비밀번호</span></li>
					<li><input type="password" class="pw" value="${userVO.userPw}"></input></li>
				</ul>
				<ul class="topUl row6">
					<li>확인</span></li>
					<li><input type="password" class="pw2"
						value="${userVO.userPw}"></input><a href="#" class="pwSubmit">수정</a></li>

				</ul>


				<ul class="topUl row7">
					<li>연락처</li>
					<li><input type="text" class="phone"
						value="${userVO.userPhone}"></input><a href="#"
						class="phoneSubmit">수정</a></li>


				</ul>

				<ul class="topUl row8">
					<li>이메일</li>
					<li><input type="text" class="email"
						value="${userVO.userEmail}"></input><a href="#"
						class="emailSubmit">수정</a></li>


				</ul>

				<ul class="topUl row9 divisionLine">
					<li></li>
					<li></li>

				</ul>

				<ul class="topUl row10">
					<li>우편번호</li>
					<li><input type="text" class="postCode"
						onclick="loadDaumApi();" value="${userVO.userAddr1}" /></li>


				</ul>
				<ul class="topUl row11">
					<li>주소</li>
					<li><input type="text" class="addr"
						value="${userVO.userAddr2}"></input></li>


				</ul>

				<ul class="topUl row12">
					<li>상세주소</li>
					<li><input type="text" class="detailAddr"
						value="${userVO.userAddr3}"></input> <a href="#"
						class="addrSubmit">수정</a></li>

				</ul>

				<ul class="topUl row13 divisionLine">
					<li></li>
					<li></li>

				</ul>

				<ul class="btnCon">
					<li><a href="#" class="formSubmit">수정</a></li>
					<li><a href="javascript:history.back();" class="back">취소</a></li>


				</ul>


			</div>

		</div>

	</div>


	<%@ include file="../include/footer.jsp"%>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<%-- <script src="${pageContext.request.contextPath}/assets/js/adminMainPage/adminUserPage/adminUserPage.js"></script> --%>
	<script>
		let password = document.querySelector(".pw");
		let password2 = document.querySelector(".pw2");
		let pwSubmit = document.querySelector(".pwSubmit");
		let regxp = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		let regxp2 = RegExp(/^[0-9][0-9]+$/);
		let email = document.querySelector(".email");
		let emailSubmit = document.querySelector(".emailSubmit");
		let formSubmit = document.querySelector(".formSubmit");
		let postCode = document.querySelector(".postCode");
		let addr = document.querySelector(".addr");
		let addrSubmit = document.querySelector(".addrSubmit");
		let detailAddr = document.querySelector(".detailAddr");
		let phone = document.querySelector(".phone");
		let phoneSubmit = document.querySelector(".phoneSubmit");

		let hidden = document.querySelector("#userNum");

		/* 	let logoutBtn = document.querySelector(".logoutBtn");
			let logoutBtnM = document.querySelector(".logoutBtnM");

			logoutBtn.addEventListener("click", function() {

				location.href = "${pageContext.request.contextPath}/admin/logout";

			});

			logoutBtnM.addEventListener("click", function() {

				location.href = "${pageContext.request.contextPath}/admin/logout";

			}); */

		$(function() {

			//전체 수정
			formSubmit
					.addEventListener(
							"click",
							function(e) {
								e.preventDefault();

								console
										.log("jsp hidden.value: "
												+ hidden.value);
								if (password.value !== ""
										&& password2.value !== ""
										&& email.value !== ""
										&& phone.value !== ""
										&& addr.value !== ""
										&& postCode.value !== ""
										&& detailAddr.value !== "") {

									alert("${userVO.userId}님의 정보가 수정 되었습니다");
									location.href = "${pageContext.request.contextPath}/user/userFixComplete?userNum="
											+ hidden.value
											+ "&userPw="
											+ password.value
											+ "&userEmail="
											+ email.value
											+ "&userPhone="
											+ phone.value
											+ "&userAddr1="
											+ postCode.value
											+ "&userAddr2="
											+ addr.value
											+ "&userAddr3="
											+ detailAddr.value;
								} else {
									alert("수정 실패");

								}

							});

			//비밀번호 정보 수정
			pwSubmit
					.addEventListener(
							"click",
							function(e) {

								e.preventDefault();

								if (password.value == password2.value) {
									let pw = {
										userPw : password.value,
										userNum : parseInt(hidden.value)
									};

									$
											.ajax({

												url : "${pageContext.request.contextPath}/user/userPwUpdate",
												type : "POST",
												data : JSON.stringify(pw),
												contentType : "application/json; charset=utf-8",
												success : function(item) {

													alert("패스워드 수정이 완료되었습니다.");
													console.log("패스워드 "
															+ item.userPw
															+ "변경");

													password.value = item.userPw;

												}

											});

								} else {
									alert("비밀번호의 값이 다릅니다.");
								}

							});

			//이메일 정보 수정
			emailSubmit
					.addEventListener(
							"click",
							function(e) {
								e.preventDefault();
								console.log(email.value);
								let emailResult = {
									userNum : parseInt(hidden.value),
									userEmail : email.value
								};
								console.log(emailResult);

								if (!(regxp.test(email.value.trim()))) {
									alert("이메일의 형식이 아닙니다.");

								} else {

									$
											.ajax({

												url : "${pageContext.request.contextPath}/user/userPwUpdate",
												type : "POST",
												data : JSON
														.stringify(emailResult),
												contentType : "application/json; charset=utf-8",
												success : function(item) {

													alert("이메일 수정이 완료되었습니다.");
													console.log("이메일 "
															+ item.userEmail
															+ "변경");

													email.value = item.userEmail;

												}

											});
								}

							});

			//핸드폰 정보 수정
			phoneSubmit
					.addEventListener(
							"click",
							function(e) {
								let phoneResult = {
									userNum : parseInt(hidden.value),
									userPhone : parseInt(phone.value)
								};

								e.preventDefault();
								if (!(regxp2.test(phone.value.trim()))) {
									alert("-을 제외하고 입력해주세요.");
								} else {

									$
											.ajax({

												url : "${pageContext.request.contextPath}/user/userPwUpdate",
												type : "POST",
												data : JSON
														.stringify(phoneResult),
												contentType : "application/json; charset=utf-8",
												success : function(item) {

													alert("전화번호 수정이 완료되었습니다.");
													console.log(" 전화번호"
															+ item.userPhone
															+ "변경");

													phone.value = item.userPhone;

												}

											});

								}

							});

			// 주소 정보 수정
			addrSubmit
					.addEventListener(
							"click",
							function(e) {
								let addrResult = {
									userNum : parseInt(hidden.value),
									userAddr1 : postCode.value,
									userAddr2 : addr.value,
									userAddr3 : detailAddr.value
								};

								e.preventDefault();
								if (postCode.value == "" && addr.value == ""
										&& detailAddr.value == "") {
									alert("주소를 정확히 입력해주세요.");
								} else {

									$
											.ajax({

												url : "${pageContext.request.contextPath}/user/userPwUpdate",
												type : "POST",
												data : JSON
														.stringify(addrResult),
												contentType : "application/json; charset=utf-8",
												success : function(item) {

													alert("주소 수정이 완료되었습니다.");

													postCode.value = item.userAddr1;
													addr.value = item.userAddr2;
													detailAddr.value = item.userAddr3;

												}

											});

								}

							});

		});

		//지도 api
		function loadDaumApi() {

			new daum.Postcode({
				oncomplete : function(data) {
					console.log(data);

					let doroAddr = data.roadAddress;
					let jibunAddr = data.jibunAddress;

					document.querySelector(".postCode").value = data.zonecode;
					if (doroAddr !== '') {
						document.querySelector(".addr").value = doroAddr;
					} else if (jibunAddr !== '') {
						document.querySelector(".addr").value = jibunAddr;

					}
				}

			}).open();
		}
	</script>
</body>
</html>