<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html class="no-js">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cine Town</title>

<!-- header & footer css-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/headerFooter/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/headerFooter/headerFooter.css">
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

<!-- header & footer css-->

</head>

<body>
	<!-- header section strats -->
	<header class="header_section">
		<div class="container">
			<nav style="background-color: #232830" class="navbar navbar-expand-lg custom_nav-container ">
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
							href="${pageContext.request.contextPath}/movie/movieMenu">영화
						</a></li>
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
							href="${pageContext.request.contextPath}/aboutUs/faqMain">고객 센터</a></li>


						<c:if test="${sessionScope.account.userId != null}">
							<c:if test="${sessionScope.account.verify == 9}">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/admin/main">관리자
										페이지</a></li>
							</c:if>
						</c:if>
					</ul>

					<c:if test="${sessionScope.account.userId != null}">
						<div class="username">
							<a href="${pageContext.request.contextPath}/user/myPage" class="myPagecss" style="color:white">${sessionScope.account.userName}님</a></div>
					</c:if>
				</div>
				<div class="user_option">
					<c:choose>
						<c:when test="${sessionScope.account.userNum == null }">

							<a href="${pageContext.request.contextPath}/user/signin"
								class="user_link" style="font-size: 1.7em;"> <i
								class="xi-heart" style="font-size: 20px;" aria-hidden="true"></i>
							</a>
							<a href="${pageContext.request.contextPath}/user/signin"
								class="user_link" style="font-size: 1.7em;"> <i
								class="xi-cart" style="font-size: 20px;" aria-hidden="true"></i>
							</a>
							<a href="${pageContext.request.contextPath}/user/signup"
								class="user_link" style="font-size: 1.7em;"> <i
								class="xi-user-plus" style="font-size: 20px;" aria-hidden="true"></i>
							</a>
							<a href="${pageContext.request.contextPath}/user/signin"
								class="order_online"
								style="border: 1px solid #fff; background-color: #232830; padding: 5px 20px;">
								로그인 </a>
						</c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/productWishlist/productWishlist"
								class="user_link" style="font-size: 1.7em;"> <i
								class="xi-heart" aria-hidden="true"></i>
							</a>
							<a href="${pageContext.request.contextPath}/cart/showCartList"
								class="user_link" style="font-size: 1.7em;"> <i
								class="xi-cart" aria-hidden="true"></i>
							</a>
							<a href="${pageContext.request.contextPath}/user/signout"
								class="order_online"
								style="border: 1px solid #fff; background-color: #232830; padding: 5px 20px;">
								로그아웃 </a>
						</c:otherwise>
					</c:choose>
				</div>
			</nav>
		</div>
	</header>
	<!-- end header section -->
 <link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminMainPage/adminUserFixPage/adminUserFixPage.css">
<!-- 메인 css 끝 -->
<!-- fontawesome LINK 추가 -->
<!-- <link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"> -->
<!-- fontawesome 끝 -->

<style>
</style>
</head>
<body>
  
            
        <div class="resultTitle">
            <h3>고객문의 등록 페이지</h3>
        </div>
        
        <div class="userInfoCon">
            <div class="topUserCon">
                <div class="table">
                <form:form modelAttribute="qnaVO" action="${pageContext.request.contextPath}/aboutUs/writeQna" method="GET">
                    <ul class="topUl row1">
                        <li>제목</li>
                        <li><form:input path="qnaTitle" value="${qna.qnaTitle }"/></li>
                    </ul>
                    
					<!-- 구분선 -->
                    <ul class="topUl row3 divisionLine">
                        <li></li>
                        <li></li>
                    </ul>
    
                    <ul class="topUl row2">
                        <li>내용</li>
                        <li><form:input path="qnaComment" value="${qna.qnaComment }"/></li>
                    </ul>

                    <!-- 구분선 -->
                    <ul class="topUl row3 divisionLine">
                        <li></li>
                        <li></li>
                    </ul>

                    <ul class="btnCon">
                        <li><button class="formsubmit" type="submit" style="border: none; background-color: #ff0000; font-size: 15px; padding: 10px 30px; margin-right: 30px">등록</button></li>
                        <li><button style="border: none; background-color: #e0e0e0; font-size: 15px; padding: 10px 30px;" type="button" onclick="javascript:history.back()">취소</button></li>
                    </ul>
                    </form:form>
                </div>
            </div>
        </div>
    </div>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/adminMainPage/adminUserPage/adminUserPage.js"></script>
    <script>
       
        
    </script>

</body>
</html>