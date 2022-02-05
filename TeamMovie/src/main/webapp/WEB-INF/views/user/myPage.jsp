<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="container">
		<div class="resultTitle">
			<h3>${sessionScope.account.userName}님의정보</h3>

		</div>

	<!-- sessionScope에 담겨있는 num을 hidden으로 주고 form의 name userNum에 저장해서 mapper에서 userNum으로 찾을 수 있게 함 -->
		<form action="${pageContext.request.contextPath}/user/userFix">
			<input type="hidden" value="${sessionScope.account.userNum}" name="userNum" />
			<button type="submit">내 정보 수정</button>
		</form>



	</div>
	<%@ include file="../include/footer.jsp"%>

</body>
</html>