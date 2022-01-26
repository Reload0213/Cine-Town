<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
 
    <!-- 이영주 영화 메뉴 페이지 css 시작 -->

    <!-- main css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/movieMain/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/movieMain/responsive.css">


    <!-- 영화 메뉴 페이지 css 종료 -->

</head>

<%@ include file="../include/header.jsp"%>
<main>
	<!-- 영화 메뉴 페이지 html 시작 -->


	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div
					class="banner_content d-md-flex justify-content-between align-items-center">
					<div class="mb-3 mb-md-0">
						<h2>카테고리</h2>
					</div>
					<div class="page_link">
						<a href="index.html">전체</a> <a href="contact.html">액션</a> <a
							href="contact.html">로맨스</a> <a href="contact.html">코믹</a> <a
							href="contact.html">판타지</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Category  Area Start =================-->

	<section class="category-page area-padding">
		<div class="container">
			<div class="row">
			<c:forEach var="item" items="${list}">
				<div class="col-md-6 col-lg-4">
					<div class="single-category">
						<div class="thumb">
						<a href="${pageContext.request.contextPath}/movie/movieDetail?mvNum=${item.mvNum}">
							<img class="img-fluid"
								src="${item.mvPosterPath}"
								alt="">
						</a>
						</div>
						<div class="short_details">
							<div class="meta-top d-flex">
								<a href="${pageContext.request.contextPath}/movie/movieDetail?mvNum=${item.mvNum}">${item.mvTitle} </a>/ <a href="#">개봉일자 : ${item.mvYear}</a>
							</div>
							<a class="d-block" href="${pageContext.request.contextPath}/movie/movieDetail?mvNum=${item.mvNum}">
								<p>${item.mvContent1}</p>
							</a>
							<div class="meta-bottom d-flex">
								<a href="#"><i class="xi-message-o"></i>05 comment</a> <a
									href="#"><i class="xi-heart"></i> 0 like</a>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
				
	</section>
	<!--================Category  Area End =================-->

	<!-- ================ 예고편 Area Starts ================= -->

	<section class="instagram">
		<h2>최신 영화 예고편</h2>
		<div class="row no-gutters">
			<iframe width="229.25" height="251.15"
				src="https://www.youtube.com/embed/W7edvITC9g4" frameborder="0"
				allowfullscreen></iframe>
			<iframe width="229.25" height="251.15"
				src="https://www.youtube.com/embed/qV7RgYARQQ8" frameborder="0"
				allowfullscreen></iframe>
			<iframe width="229.25" height="251.15"
				src="https://www.youtube.com/embed/bR27YmkAK24" frameborder="0"
				allowfullscreen></iframe>
			<iframe width="229.25" height="251.15"
				src="https://www.youtube.com/embed/K2QzH9GSL-4" frameborder="0"
				allowfullscreen></iframe>
			<iframe width="229.25" height="251.15"
				src="https://www.youtube.com/embed/Vy-wae0yF-I" frameborder="0"
				allowfullscreen></iframe>
			<iframe width="229.25" height="251.15"
				src="https://www.youtube.com/embed/skWUWgUQn0s" frameborder="0"
				allowfullscreen></iframe>
			<iframe width="229.25" height="251.15"
				src="https://www.youtube.com/embed/dKy5B-PSYZo" frameborder="0"
				allowfullscreen></iframe>
		</div>
	</section>

	<!-- ================ 예고편 area End ================= -->

	<!-- 영화 메뉴 페이지 html 종료 -->

</main>
<%@ include file="../include/footer.jsp"%>


<!-- 이영주 영화 메뉴 페이지 js 시작 -->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/popper.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/stellar.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/jquery.ajaxchimp.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/waypoints.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/mail-script.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/contact.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/jquery.form.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/jquery.validate.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/mail-script.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/movieMenu/theme.js"></script>


<!-- 영화 메뉴 페이지 js 끝 -->



</body>
</html>