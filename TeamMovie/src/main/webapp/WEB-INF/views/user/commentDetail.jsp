<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
	border: 3px dashed black;
	width: 50%;
	padding: 50px 0;
}

textarea {
	width: 100%;
	border: none;
	padding: 1.4rem 1.2rem 0 1.2rem;
	outline: none;
	resize: none;
	font-size: 1.1rem;
	overflow-y: auto;
}

.textAreaBox {
	width: 70%;
	display: flex;
	flex-direction: column;
	border: 0.1rem solid #ebe8e8;
	font-weight: 400;
	margin: 0 auto;
}

.cntText {
	text-align: right;
	background-color: #ffffff;
	padding: 0.2rem;
}

.starInput {
	padding: 0px !important;
	text-align: center;
	border: none;
}

input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
	{
	opacity: 1 !important;
}
</style>
</head>

<body>
	<%@ include file="../include/header.jsp"%>

	<div class="usercommentWrapper">
		<form:form modelAttribute="reviewReplyVO" id="modify_comment">
			<span style="font-size: 2rem; font-weight: bold">${reviewReplyVO.mvTitle}</span>
			<br />
			<br />
			<span style="font-style: italic">${reviewReplyVO.rpDate}</span>
			<br />
			<br />
			<span class="xi-star"
				style="color: orange; font-size: 1.2rem; margin-right: 5px"></span>
			<form:input class="starInput" type="number" path="rpStar"
				value="${reviewReplyVO.rpStar}" min="1" max="10" />
			<span style="margin-right: 20px;"></span>
			<span class="xi-heart"
				style="color: red; font-size: 1.2rem; margin-right: 5px"></span>${reviewReplyVO.rpLike}
		<br />
			<br />
			<br />
			<div class="textAreaBox">
				<form:textarea path="rpComment" id="textarea" cols="10" rows="2"
					placeholder="댓글을 입력해주세요." value="${reviewReplyVO.rpComment}"></form:textarea>
				<span class="cntText"><strong class="nowCnt">0</strong>/100자</span>
			</div>
			<br />
			<br />
			<form:button id="formSubmit" type="button">댓글 수정</form:button>
			<form:input type="hidden" path="rpNum" id="rpNum"
				value="${reviewReplyVO.rpNum}" />
		</form:form>
	</div>


	<script>
		//적은 숫자 카운팅
		document
				.getElementById("textarea")
				.addEventListener(
						"keydown",
						function() {
							document.querySelector(".nowCnt").innerHTML = this.value.length;

							if (this.value.length > 100) {
								this.value = this.value.substring(0, 100);
								document.querySelector(".nowCnt").innerHTML = "100";
							}

						});
		
		document.getElementById("formSubmit").addEventListener("click", function(){
			alert("수정되었습니다.");
		
		})

	
	</script>

	<%@ include file="../include/footer.jsp"%>


	<!--현 페이지 스크립트-->
	<script type="text/javascript">
	${pageContext.request.contextPath}/user/modify_commentFinish"
		
	</script>
	<!--현 페이지 스크립트-->
</body>

</html>