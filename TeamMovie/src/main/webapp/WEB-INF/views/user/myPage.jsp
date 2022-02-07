<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/user/myPage.css"> --%>
<style>
.infomation {
	height: 60vh;
	font-size: 16px;
}

form {
	width: 100%;
	display: flex;
	justify-content: center;
}

.mainformSubmit {
	border: none;
	background-color: white;
	cursor: pointer;
	font-size: 20px;
	color: black;
}

button:hover {
	font-style: italic;
}

.resultTitle {
	text-align: center;
	margin: 50px auto;
	width: 400px;
}

.line {
	border-bottom: 3px solid black;
	margin: 0 auto;
}

.cartlink {
	text-align: center;
	margin: 0 auto;
	font-size: 20px;
}

.cartlink a {
	color: black;
}

.cartlink:hover {
	color: black;
	font-style: italic;
	text-align: center;
	margin: 0 auto;
	font-size: 20px;
}

.cartlink:active {
	border: none;
}

.cartcenter {
	display: flex;
	justify-content: center;
	margin: 0 auto;
}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<div class="infomation ">
		<div class="resultTitle">
			<h3>${sessionScope.account.userName}님의마이페이지입니다</h3>
			<div class="line"></div>
		</div>

		<!-- sessionScope에 담겨있는 num을 hidden으로 주고 form의 name userNum에 저장해서 mapper에서 userNum으로 찾을 수 있게 함 -->
		<form action="${pageContext.request.contextPath}/user/userFix">
			<input type="hidden" value="${sessionScope.account.userNum}"
				name="userNum" />
			<button type="submit" class="mainformSubmit">내 정보 수정</button>
		</form>
		<br />

		<button
			onClick="location.href='${pageContext.request.contextPath}/cart/showCartList'"
			class="mainformSubmit cartcenter">굿즈 장바구니</button>
		<br />

		<form:form modelAttribute="reviewReplyVO" action="${pageContext.request.contextPath}/user/commentList">
			<form:input path="rpWriternum" type="hidden"
				value="${sessionScope.account.userNum}" />
				
			<form:button type="submit" class="mainformSubmit">영화 작성 목록</form:button>

		</form:form>
		<br />

		<form id="user_delete">
			<input type="hidden" value="${sessionScope.account.userNum}"
				name="userNum" />
			<button type="submit" class="mainformSubmit user_deleteBtn">회원탈퇴</button>
		</form>
		<br />




	</div>




	<%@ include file="../include/footer.jsp"%>
	<script>
		$(document)
				.ready(
						function() {
							//회원 삭제 버튼
							$(".user_deleteBtn")
									.click(
											function() {
												let yn = confirm("시네타운을 탈퇴하시겠습니까?");

												if (yn) {
													let finalmsg = confirm("탈퇴하시면 모든 정보가 삭제 됩니다. 그래도 탈퇴하시겠습니까?");
													if (finalmsg) {

														$("#user_delete")
																.attr("action",
																		"${pageContext.request.contextPath}/user/delete");
														$("#user_delete")
																.submit();
														alert("삭제가 완료 되었습니다");
													} else {
														alert("탈퇴가 취소되었습니다");
													}
												} else {
													alert("탈퇴가 취소되었습니다");
													console.log("취소")
												}
											})
						}

				);
	</script>

</body>
</html>