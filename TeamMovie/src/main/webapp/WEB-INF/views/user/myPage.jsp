<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/user/myPage.css">
<style>
.infomation {
	height: 60vh;
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
</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<div class="container infomation ">
		<div class="resultTitle">
			<h3>${sessionScope.account.userName}님</h3>
		</div>

		<!-- sessionScope에 담겨있는 num을 hidden으로 주고 form의 name userNum에 저장해서 mapper에서 userNum으로 찾을 수 있게 함 -->
		<form action="${pageContext.request.contextPath}/user/userFix">
			<input type="hidden" value="${sessionScope.account.userNum}"
				name="userNum" />
			<button type="submit" class="mainformSubmit">내 정보 수정</button>

		</form>
		<br />
		<form id="user_delete">
			<input type="hidden" value="${sessionScope.account.userNum}"
				name="userNum" />
			<button type="submit" class="mainformSubmit user_deleteBtn">회원탈퇴</button>

		</form>


	</div>




	<%@ include file="../include/footer.jsp"%>
	<script>
	$(document).ready(function(){
		$(".user_deleteBtn").click(function(){
			let yn = confirm("시네타운을 탈퇴하시겠습니까?");
			
			if(yn){
				let finalmsg = confirm("탈퇴하시면 모든 정보가 삭제 됩니다. 그래도 탈퇴하시겠습니까?");
				$("#user_delete").attr(
						"action",
						"${pageContext.request.contextPath}/user/delete");
				$("#user_delete").submit();
				alert("삭제가 완료 되었습니다");
			}else{
				console.log("취소")
			}
		})
	})
	</script>

</body>
</html>