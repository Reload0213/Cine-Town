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
</style>
</head>

<body>
	<%@ include file="../include/header.jsp"%>

	<div class="usercommentWrapper">

		<span style="font-size: 2rem; margin-right: 30px; font-weight: bold">${reviewReplyVO.mvNum}</span>
		<span class="xi-star" style="color: orange; font-size: 1.2rem"></span>${reviewReplyVO.rpStar}
		<span style="margin-right: 10px;"></span>
		<span class="xi-heart" style="color: red; font-size: 1.2rem"></span>${reviewReplyVO.rpLike}
		<span style="margin-right: 30px;"></span>
		<span style="font-style:italic">${reviewReplyVO.rpDate}</span>
		<br />
		<br />
		<br />
		<span style="font-size: 1.5rem">${reviewReplyVO.rpComment}</span>
	</div>
	

	<%@ include file="../include/footer.jsp"%>


	<!--현 페이지 스크립트-->
	<script type="text/javascript">
		
	</script>
	<!--현 페이지 스크립트-->
</body>

</html>