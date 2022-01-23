<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 

  <!-- 임승혁 게시판 폰트 링크 끝 -->
  
  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/index/indexCSS/bootstrap.css" />

 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/premiereDetail/premiereDetail-page1.css">
    <!-- header & footer css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/headerFooter/headerFooter.css">
    <link href="favicon.ico" rel="icon">
    <!-- 글씨 폰트 Noto, Roboto -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
    <!-- XEICON 링크 -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    
    <!-- header & footer css-->


</head>

<body>

<%@ include file="../include/header.jsp" %>

  <%-- <header class="header_section">
        <div class="container">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                    <span>
                        Cine Town
                    </span>
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class=""> </span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav  mx-auto ">
                        <li class="nav-item">
                            <a class="nav-link cinema" href="index.html">영화 </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="menu.html">굿즈</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">회사 소개</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/preview/main">시사회 / 이벤트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="book.html">고객 센터</a>
                        </li>
                    </ul>
                    <div class="user_option">
                        <a href="" class="user_link" style="font-size: 1.7em;">
                            <i class="xi-heart" aria-hidden="true"></i>
                        </a>
                        <a href="" class="user_link" style="font-size: 1.7em;">
                            <i class="xi-cart" aria-hidden="true"></i>
                        </a>

                        <a href="" class="user_link" style="font-size: 1.7em;">
                            <i class="xi-user-plus" aria-hidden="true"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/user/signin" class="order_online"
                            style="border: 1px solid #fff; background-color: #232830; padding: 5px 20px; ">
                            로그인
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </header>
<!-- end header section --> --%>
 


<!-- 임승혁 시사회 페이지 바디메인 시작입니다. -->



<!-- 임승혁 시사회 페이지 디테일 영화해적 바디시작  시작 -->



<div class="mainCon">
    <nav>
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






<!-- 임승혁 게시판 디테일 영화해적 바디끝 -->


























<%@ include file="../include/footer.jsp" %>














<%-- <!--header&footer script-->
<script src="${pageContext.request.contextPath}/assets/js/GoodsMainjs/vendor/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/GoodsMainjs/bootstrap.min.js"></script>
 --%>
<!--현 페이지 스크립트-->

<!-- 임승혁 게시판 body 스크립트 -->
<script src="${pageContext.request.contextPath}/assets/js/premiereMain/premiereMain.js"></script>








</body>
</html>