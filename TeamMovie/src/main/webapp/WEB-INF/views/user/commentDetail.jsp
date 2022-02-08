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
	width: 90%;
	display: flex;
	flex-direction: column;
	border: 0.1rem solid #ebe8e8;
	font-weight: 400;
	margin: 0 auto;
}
.cntText{
    text-align: right;
    background-color: #ffffff;
    padding: 0.2rem;}
</style>
</head>

<body>
	<%@ include file="../include/header.jsp"%>

	<div class="usercommentWrapper">

		<span style="font-size: 2rem; margin-right: 30px; font-weight: bold">${reviewReplyVO.mvNum}</span>
		<span class="xi-star" style="color: orange; font-size: 1.2rem"></span>${reviewReplyVO.rpStar}
		<span style="margin-right: 10px;"></span> <span class="xi-heart"
			style="color: red; font-size: 1.2rem"></span>${reviewReplyVO.rpLike}
		<span style="margin-right: 30px;"></span> <span
			style="font-style: italic">${reviewReplyVO.rpDate}</span> <br /> <br />
		<br />
		<div class="textAreaBox">
			<textarea name="" id="textarea" cols="10" rows="2"
				placeholder="댓글을 입력해주세요.">${reviewReplyVO.rpComment}</textarea>
			<span class="cntText"><strong class="nowCnt">0</strong>/100자
				(한글 100자 / 영문 100자)</span>
		</div>
		<div class="submit">
			<button id="subBtn" type="button">등록</button>
		</div>

	</div>


	<script>
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
	</script>

	<%@ include file="../include/footer.jsp"%>


	<!--현 페이지 스크립트-->
	<script type="text/javascript">
		
	</script>
	<!--현 페이지 스크립트-->
</body>

</html>