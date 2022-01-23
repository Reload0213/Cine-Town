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



<!-- 임승혁 시사회 페이지 바디메인 시작입니다. -->



<!-- 임승혁 시사회 -->
<div class="mainCon" >
    <!-- <div class="headerMoviePoster on">
      <img src="img/movieHeaderPoster/jangminhodrama.jpg" alt=""></div>
   -->
     <h2 class="mainTitle" style="text-align: center;">시사회 소식</h2>
       
     <p>영화와 스타를 만나는 시사회 소식을 알려드립니다.</p>
     <div class="btnCon">
      <ul class="filterBtns">
        <li><span class="btn select" onclick='filterSelection("all")'>ALL</span></li>
        <li><span class="btn" onclick='filterSelection("action")'>액션</span></li>
        <li><span class="btn" onclick='filterSelection("romance")'>로맨스</span></li>
        <li><span class="btn" onclick='filterSelection("drama")'>드라마</span></li>
      </ul>



     </div>




<div class="row">
  <h5 id="eventNum"></h5>




  <a href="premiereDetail-page1.html" class="column romance">
    <div class="content">
      <div class="moviePosterCon item1"><img src="assets/images/premiereMain/movieposter/mannyunijinado.jpg" alt=""></div>
      <p class="movieName">만 년이 지나도 변하지 않는게 ... </p>
      <p class="hashtags">#2021 #판타지 #로맨스 #코미디 #대만</p>


      
    </div>
  
    </a>






  <a href="premiereDetail-page2.html" class="column action">
    <div class="content">
      <div class="moviePosterCon item1"><img src="assets/images/premiereMain/movieposter/imsinhannamuwa.jpg" alt=""></div>
      <p class="movieName">임신한 나무와 도깨비 </p>
      <p class="hashtags">#2019 #판타지 #다큐멘터리 #한국</p>


      
    </div>
  
    </a>
  

 

  <a href="premiereDetail-page3.html" class="column action">
    <div class="content">
      <div class="moviePosterCon item1"><img src="assets/images/premiereMain/movieposter/haejuk.jpg" alt=""></div>
      <p class="movieName">해적:도깨비 깃발 </p>
      <p class="hashtags">#2021 #액션 #모험 #코미디 #한국</p>


      
    </div>
 
  </a>




  <a href="premiereDetail-page4.html" class="column drama">
    <div class="content">
      <div class="moviePosterCon item1"><img src="assets/images/premiereMain/movieposter/kingmaker.jpg" alt=""></div>
      <p class="movieName">킹메이커 </p>
      <p class="hashtags">#2021 #드라마 #한국</p>


      
    </div>
 
  </a>


  

  
  <a href="premiereDetail-page5.html" class="column drama">
    <div class="content">
      <div class="moviePosterCon item1"><img src="assets/images/premiereMain/movieposter/france.jpg" alt=""></div>
      <p class="movieName">프랑스 </p>
      <p class="hashtags">#2021 #코미디 #드라마 #프랑스</p>


      
    </div>
 
  </a>

  <a href="premiereDetail-page6.html" class="column action">
    <div class="content">
      <div class="moviePosterCon item1"><img src="assets/images/premiereMain/movieposter/kingsman.jpg" alt=""></div>
      <p class="movieName">킹스맨:퍼스트 에이전트 </p>
      <p class="hashtags">#2021 #액션 #모험 #코미디 #영국 #미국</p>


      
    </div>
 
  </a>



  <a href="premiereDetail-page7.html" class="column romance">
    <div class="content">
      <div class="moviePosterCon item1"><img src="assets/images/premiereMain/movieposter/chungchoonjukni.jpg" alt=""></div>
      <p class="movieName">청춘적니 </p>
      <p class="hashtags">#2021 #로맨스 #드라마 #중국</p>


      
    </div>
 
  </a>

  


  <a href="premiereDetail-page8.html" class="column romance">
    <div class="content">
      <div class="moviePosterCon item1"><img src="assets/images/premiereMain/movieposter/sil.jpg" alt=""></div>
      <p class="movieName">실:인연의 시작 </p>
      <p class="hashtags">#2020 #드라마 #로맨스 #일본</p>


      
    </div>
 
  </a>

 

 

 
  


</div>





</div>


























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