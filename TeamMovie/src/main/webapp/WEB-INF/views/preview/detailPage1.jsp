<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  스타일추가 -->
 <link rel="stylesheet" href="test1.css">
 
 <!-- header & footer css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/headerFooter2/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/headerFooter2/headerFooter.css">
<!-- <link href="favicon.ico" rel="icon"> -->
<!-- 글씨 폰트 Noto, Roboto -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap"
	rel="stylesheet">
<!-- XEICON 링크 -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">


 
 
</head>
<body>



<!-- header section strats -->
	<header class="header_section">
		<div class="container">
			<nav class="navbar navbar-expand-lg custom_nav-container ">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">
					<span> Cine Town </span>
				</a>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class=""> </span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav  mx-auto ">
						<li class="nav-item"><a class="nav-link cinema"
							href="${pageContext.request.contextPath}/movie/movieMenu">영화 </a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/goods/goodsMain">굿즈</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/aboutUs/aboutUsMain">회사
								소개</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/preview/main">시사회 /
								이벤트</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/faq/faqMain">고객 센터</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/admin/main">임시 관리자
								페이지 링크</a></li>
					</ul>
					<div class="user_option">
						<a href="${pageContext.request.contextPath}/goods/wishlist"
							class="user_link" style="font-size: 1.7em;"> <i
							class="xi-heart" aria-hidden="true"></i>
						</a> <a href="${pageContext.request.contextPath}/goods/cart"
							class="user_link" style="font-size: 1.7em;"> <i
							class="xi-cart" aria-hidden="true"></i>
						</a> <a href="${pageContext.request.contextPath}/user/signup"
							class="user_link" style="font-size: 1.7em;"> <i
							class="xi-user-plus" aria-hidden="true"></i>
						</a> <a href="${pageContext.request.contextPath}/user/signin"
							class="order_online"
							style="border: 1px solid #fff; background-color: #232830; padding: 5px 20px;">
							로그인 </a>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!-- end header section -->



<!--임승혁 바디 시작  -->


<div class="mainCon">
    <nav class="nav">
     <h5>영화 [만년이 지나도 변하지 않는게 있어] 응모 이벤트</h5>
      <p class="date">2022.01.18 ~ 2022.02.09</p>
  </nav>
     <div class="contentCon item1">
       <img src="${pageContext.request.contextPath}/assets/images/premiereDetail/movieDetailPoster/mannyuniginado1.jpg" alt="">
      </div>

      <div class="contentCon item2">
        <img src="${pageContext.request.contextPath}/assets/images/premiereDetail/movieDetailPoster/mannyuniginado2.jpg" alt="">
       </div>



    <div class="iframeCon">
        <iframe src="https://www.youtube.com/embed/bnVfkDSNg4M?controls=0&mute=0&autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


    </div>

    <div class="contentCon item3">
      <img src="${pageContext.request.contextPath}/assets/images/premiereDetail/movieDetailPoster/mannyuniginado3.jpg" alt="">
     </div>
  
     <div class="contentCon item4">
      <img src="${pageContext.request.contextPath}/assets/images/premiereDetail/movieDetailPoster/mannyuniginado4.jpg" alt="">
     </div>


</div>
 <div class="voteBtnCon"><a href="#" class="voteBtn">응모하기</a></div>


</div>




<!-- 임승혁 바디끝  -->





<!-- footer section start -->
<footer class="footer_section">
	<div class="container">
		<div class="row">
			<div class="col-md-4 footer-col">
				<div class="footer_contact">
					<h4 style="color: #fff;">Contact Us</h4>
					<div class="contact_link_box">
						<a href=""> <i class="fa fa-map-marker" aria-hidden="true"></i>
							<span> 서울특별시 금천구 가산동 가산디지털2로 115 대륭테크노타운3차 1109-1호 </span>
						</a> <a href=""> <i class="fa fa-phone" aria-hidden="true"></i> <span>
								Call 02-2108-5900 </span>
						</a> <a href=""> <i class="fa fa-envelope" aria-hidden="true"></i>
							<span> goodee39@gmail.com </span>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 footer-col">
				<div class="footer_detail">
					<a href="" class="footer-logo"> Cine Town </a>
					<p>
						구디39기 3조에서 제작 팀프로젝트 <br>영화 리뷰와 굿즈 판매를 하는 웹사이트 입니다.
					</p>
					<div class="footer_social">
						<a href=""> <i class="xi-instagram" aria-hidden="true"></i>
						</a> <a href=""> <i class="xi-twitter" aria-hidden="true"></i>
						</a> <a href=""> <i class="xi-facebook" aria-hidden="true"></i>
						</a> <a href=""> <i class="xi-youtube" aria-hidden="true"></i>
						</a> <a href=""> <i class="xi-naver" aria-hidden="true"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 footer-col">
				<h4 style="color: #fff;">Opening Hours</h4>
				<p>10.00 Am -16.00 Pm</p>
			</div>
		</div>
		<div class="footer-info">
			<p>
				&copy; 구디 3조 : 이영주, 김용현, 강혜수, 김정민, 임승혁 <br> <br> &copy; <a
					href="#" target="_blank">by goodee39</a>
			</p>
		</div>
	</div>
</footer>
<!-- footer section end -->




<!--header&footer script-->
<script
	src="${pageContext.request.contextPath}/assets/js/headerFooter/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/headerFooter/bootstrap.min.js"></script>
<!--header&footer script-->





</body>
</html>