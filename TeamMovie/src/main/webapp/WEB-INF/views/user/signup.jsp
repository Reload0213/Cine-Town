<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<!--현 페이지 소스-->
<link
	href="${pageContext.request.contextPath}/assets/css/loginRegister/admin.min.css"
	rel="stylesheet">
<style>
@media screen and (min-width:800px) {
	.cardcenter {
		height: 100%;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}
	.card {
		width: 50%;
	}
}

.form-group:last-of-type {
	text-align: center;
}

.form-group:last-of-type button {
	width: 100%;
	border-radius: 5px;
}

.form-group .btn {
	padding: 10px 15px 8px;
	background-color: #000;
	color: #fff;
	font-family: Poppins, Helvetica, Tahoma, Arial, sans-serif;
	font-weight: 400;
	text-transform: uppercase;
	letter-spacing: 1px;
	line-height: normal;
	white-space: normal;
	font-size: 13px;
	border: none;
}

.haveid {
	color: #000;
	font-size: small;
}

.haveid:hover {
	text-decoration: none;
	color: #000;
	font-style: italic;
}
</style>
<!--현 페이지 소스-->



</head>

<body>
	<%@ include file="../include/header.jsp"%>


	<!-- Register Content -->
	<div class="container-login">
		<div class="row justify-content-center">
			<div class="col-xl-10 col-lg-12 col-md-9 cardcenter">
				<div class="card shadow-sm my-5">
					<div class="card-body p-0">
						<div class="row">
							<div class="col-lg-12">
								<div class="login-form">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
									</div>




									<form autocomplete="off">
										<div class="form-group">
											<label for="userid">아이디</label>
											<div style="display: flex; justify-content: space-between;">
												<input type="text" class="form-control" name="userid"
													id="userid" style="width: 70%;" minlength="5"
													maxlength="20" autofocus> <input type="button"
													class="form-control" value="중복확인" id="overlay"
													onclick="overlay()" style="width: 20%; font-size: 0.9rem;">
											</div>
											<p id="idch" class="check"></p>
										</div>

										<div class="form-group">
											<label for="userPw">비밀번호</label> <input type="password"
												class="form-control" id="userPw" name="userPw">
											<p id="pw2ch" class="check"></p>
										</div>
										<div class="form-group">
											<label for="userPw">비밀번호 확인</label> <input type="password"
												class="form-control" id="userPw2">
											<p id="pwch" class="check"></p>
										</div>
										<div class="form-group">
											<label for="userName">이름</label> <input type="text"
												class="form-control" id="userName">
											<p id="namech" class="check"></p>
										</div>
										<div class="form-group">
											<label>이메일</label> <input type="email" class="form-control"
												id="userEmail" name="userEmail">
										</div>
										<div class="form-group">
											<labe for="userPhone">전화번호</label> <input type="tel"
												class="form-control" id="userPhone" name="userPhone"
												placeholder="010-1234-5678 형식으로 입력해주세요">
											<p id="phonech" class="check"></p>
										</div>
										<div class="form-group">
											<label>주소</label>
											<div style="display: flex; justify-content: space-between;">
												<input type="text" class="form-control"
													id="sample4_postcode" placeholder="우편번호"
													readonly="readonly" style="width: 60%;"> <input
													type="button" class="form-control"
													onclick="sample4_execDaumPostcode()" value="우편번호 찾기"
													style="width: 30%; font-size: 0.9rem">
											</div>
											<input class="form-control" id="sample4_roadAddress"
												type="text" placeholder="도로명 주소" readonly="readonly" /> <span
												id="guide" style="color: #999; display: none"></span> <input
												class="form-control" name="userAddr1"
												id="sample4_jibunAddress" type="text" placeholder="도로명 주소"
												style="margin-top: 1rem; margin-bottom: 1rem;" /> <span
												id="guide" style="color: #999; display: none"></span> <input
												class="form-control" type="text" name="userAddr2"
												id="sample4_detailAddress" placeholder="상세주소" size="60"><br>
											<!-- <input type="hidden" name="userAddr2" id="sample4_extraAddress"
                                                placeholder="참고항목" size="60"> -->
											<!-- <input type="text" class="form-control"> -->
										</div>
										<div class="form-group">
											<button type="submit" class="btn btn-primary btn-block">회원가입</button>
											<a href="${pageContext.request.contextPath}/user/signupSuccess">회원가입. 폼 아직 안태워서</a>
										</div>
									</form>
									<hr>
									<div class="text-center">
										<a href="${pageContext.request.contextPath}/user/signin" class="haveid" >아이디가 있으신가요?</a>
									</div>
									<div class="text-center"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Register Content -->
	<%@ include file="../include/footer.jsp"%>



	<!--현 페이지 스크립트-->
	<!-- <script src="assets/js/login/jquery.min.js"></script> -->
	<script
		src="${pageContext.request.contextPath}/assets/js/login/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/login/jquery.easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/login/ruang-admin.min.js"></script>
	<script>
		var overChk = false;
		$("#overlay").click(function() {
			var userid = $("#userid").val();
			$.ajax({
				type : 'post',
				url : 'overlay',
				data : {
					'userid' : userid
				},
				dataType : 'JSON',
				success : function(obj) {
					console.log(obj);
					if (obj.use != 1) {
						alert('사용할 수 있는 아이디 입니다.');
						overChk = true;
					} else {
						alert('이미 사용중인 아이디 입니다.');

					}
				},
				error : function(e) {
					console.log(e);
				}
			});
		});

		var idc = false;
		var pwc = false;
		var pwc2 = false;
		var phonec = false;
		var namec = false;
		var emailc = false;
		var birthJ = false;

		//모든 공백 체크 정규식
		var empJ = /\s/g;
		//아이디 정규식
		var idJ = /^[a-z0-9]{5,20}$/;
		// 비밀번호 정규식
		var pwJ = /^[a-z0-9]{6,20}$/;
		// 이름 정규식
		var nameJ = /^[가-힣]{2,6}$/;
		// 휴대폰 번호 정규식
		var phoneJ = /^01([0|1|6|7|8|9]?)-([0-9]{3,4})-([0-9]{4})$/;

		$("#userid").focusout(function() {
			if ($('#userId').val() == "") {

				$('#idch').text('*필수 정보입니다.');
				$('#idch').css('color', 'red');
				$(this).focus();
				return false;

			} else if (!idJ.test($(this).val())) {
				$('#idch').text('5~20자의 영문 소문자, 숫자만 사용가능합니다')
				$('#idch').css('color', 'red')
				$(this).focus();
				return false;

			} else if ($(this).val().indexOf("admin") != -1) {
				$('#idch').text('admin이 포함된 아이디는 사용할 수 없습니다.')
				$('#idch').css('color', 'red')
				$(this).focus();
				return false;
			} else {
				idc = true;
				$("#idch").hide();
				return true;
			}
		});

		$("#userPw").focusout(function() {
			if ($('#userPw').val() == "") {

				$('#pw2ch').text('*필수 정보입니다.');
				$('#pw2ch').css('color', 'red');
				$(this).focus();
				return false;

			} else if (!pwJ.test($(this).val())) {
				$('#pw2ch').text('6~20자의 영문 소문자, 숫자만 사용가능합니다')
				$('#pw2ch').css('color', 'red')
				$(this).focus();
				return false;
			} else {
				pwc2 = true;
				$('#pw2ch').hide();
				return true;
			}
		});

		$("#userPw2").keyup(function() {

			if ($(this).val() != $("#pw").val()) {
				$("#userPw").html("비밀번호가 다릅니다");
				$("#userPw").css("color", 'red');
				pwc = false;

			} else {
				$("#userPw").html("비밀번호가 일치합니다");
				$("#userPw").css("color", 'blue');
				pwc = true;
			}
		});

		$("#userPw").keyup(function() {

			if ($(this).val() != $("#userPw2").val()) {
				$("#pwch").html("비밀번호가 다릅니다");
				$("#pwch").css("color", 'red');
				pwc = false;

			} else {
				$("#pwch").html("비밀번호가 일치합니다");
				$("#pwch").css("color", 'blue');
				pwc = true;
			}
		});

		$("#userName").focusout(function() {
			if ($('#userName').val() == "") {

				$('#namech').text('*필수 정보입니다.');
				$('#namech').css('color', 'red');

			} else {
				namec = true;
			}
		});

		$("#userEmail").focusout(function() {
			if ($('#userEmail').val() == "") {

				$('#emch').text('*필수 정보입니다.');
				$('#emch').css('color', 'red');
				$(this).focus();
				return false;
			} else {
				emailc = true;
				return true;
			}
		});

		$("#userPhone").focusout(function() {
			if ($('#userPhone').val() == "") {
				$('#phonech').text('*필수 정보입니다.');
				$('#phonech').css('color', 'red');

			} else {
				phonec = true;
			}
		});
	</script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 참고 항목 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample4_postcode').value = data.zonecode;
							document.getElementById("sample4_roadAddress").value = roadAddr;
							document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

							// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
							if (roadAddr !== '') {
								document.getElementById("sample4_extraAddress").value = extraRoadAddr;
							} else {
								document.getElementById("sample4_extraAddress").value = '';
							}

							var guideTextBox = document.getElementById("guide");
							// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							if (data.autoRoadAddress) {
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								guideTextBox.innerHTML = '(예상 도로명 주소 : '
										+ expRoadAddr + ')';
								guideTextBox.style.display = 'block';

							} else if (data.autoJibunAddress) {
								var expJibunAddr = data.autoJibunAddress;
								guideTextBox.innerHTML = '(예상 지번 주소 : '
										+ expJibunAddr + ')';
								guideTextBox.style.display = 'block';
							} else {
								guideTextBox.innerHTML = '';
								guideTextBox.style.display = 'none';
							}
						}
					}).open();
		}
	</script>
	<!--현 페이지 스크립트-->
</body>

</html>