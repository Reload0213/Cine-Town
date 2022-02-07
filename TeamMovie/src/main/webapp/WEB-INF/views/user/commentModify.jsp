<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<!-- 페이지 작성자 김정민 -->
<head>
<!--현 페이지 소스-->

<!--현 페이지 소스-->
<style>
.usercommentWrapper {
	text-align: center;
	margin: 50px auto;
	text-align: center;
	min-height: 50vh;
}

.userTable {
	display: flex;
	justify-content: center;
	display: flex;
	margin: 30px auto;
}

table {
	width: 70%;
}

button {
	
}

thead {
	background-color: #eee;
}

th, td {
	padding: 10px 0;
}

.xi-star {
	color: orange;
}

.usercommentWrapper a {
	color: black !important;
	cursor: pointer;
}

@media ( max-width :600px) {
	table {
		width: 95%;
	}
}
</style>
</head>

<body>
	<%@ include file="../include/header.jsp"%>
	<div class="mainCon">
		<div class="resultTitle">
			<h3>공지사항 상세 수정</h3>
		</div>

		<div class="userInfoCon">
			<div class="topUserCon">
				<div class="table">
					<form:form modelAttribute="noticeVO"
						action="${pageContext.request.contextPath}/admin/updateNotice"
						method="GET">
						<ul class="topUl row1">
							<li>제목</li>
							<li><form:input path="noticeTitle"
									value="${reviewReply.rpComment }" /></li>
							
							<li>번호</li>
							<li><form:input path="noticeNum" readonly="true"
									value="${notice.noticeNum }" /></li>
						</ul>

						<!-- 구분선 -->
						<ul class="topUl row3 divisionLine">
							<li></li>
							<li></li>
						</ul>

						<ul class="topUl row2">
							<li>내용</li>
							<li><form:input path="noticeComment"
									value="${notice.noticeComment }" /></li>
						</ul>

						<!-- 구분선 -->
						<ul class="topUl row3 divisionLine">
							<li></li>
							<li></li>
						</ul>

						<ul class="btnCon">
							<li><button class="formsubmit" type="submit"
									style="border: none; background-color: #ff0000; font-size: 15px; padding: 10px 30px; margin-right: 30px">수정</button></li>
							<li><button
									style="border: none; background-color: #e0e0e0; font-size: 15px; padding: 10px 30px;"
									type="button" onclick="javascript:history.back()">취소</button></li>
						</ul>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../include/footer.jsp"%>


	<!--현 페이지 스크립트-->
	<script type="text/javascript">
		
	</script>
	<!--현 페이지 스크립트-->
</body>

</html>