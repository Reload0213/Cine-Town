<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>



<head>
<meta charset="UTF-8">
<!-- CSS
================================================== -->
<!-- Bootstrap -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/bootstrap.min.css">
<!-- Template styles-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/style.css">
<!-- Responsive styles-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/responsive.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/font-awesome.css">
<!-- Animation -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch" href="${pageContext.request.contextPath}/assets/css/aboutUs/au_css/presets/preset3.css" media="screen" rel="stylesheet" type="text/css">
<!-- 강혜수 회사소개 페이지 CSS 끝 -->

<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/foundation/6.2.3/foundation.min.css'>
<link rel='stylesheet' href='https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css'>
<link rel='stylesheet' href='https://cdn.datatables.net/responsive/2.1.0/css/responsive.dataTables.min.css'>
<link rel='stylesheet' href='https://code.getmdl.io/1.3.0/material.blue-light_blue.min.css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aboutUs/table_style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

</head>

<main>
<!-- contents Start -->
<!-- 회사소개 Start -->
<div class="body-inner">
    <div id="banner-area">
      <img src="${pageContext.request.contextPath}/assets/images/aboutUs/au_images/banner/banner1.jpg" alt ="" style="width: 100%;
      height: 100%;"/>
        <!-- Subpage title start -->
        <div class="banner-title-content">
              <div class="text-center">
                  <br><br>
                <h2>회사소개 / 공지사항</h2>
                </div>
              </div><!-- Subpage title end -->
    </div><!-- Banner area end -->
  
    <!-- Main container start -->
  
    <section id="main-container">
      <div class="container">
  
        <!-- Company Profile -->
  
        <div class="row">
          <div class="col-md-12 heading text-center">
            <h2 class="title2">Cine Town
              <span class="title-desc">최신 영화 리뷰와 신상 굿즈 쇼핑을 한 곳에서!</span>
            </h2>
          </div>
        </div><!-- Title row end -->
  
        <div class="row about-wrapper-top">
          <div class="col-md-5 ts-padding about-message">
            <h3>나눌수록 커지는 <br> 영화의 감동!</h3>
            <p>호랑이는 죽어서 가죽을 남기고, <br>진성 영화 덕후는 영화 리뷰를 남깁니다. <hr> 소소한 생각부터 진지한 평론까지, <br>최신 영화 트렌드를 파악하는 가장 빠른 방법! <hr>> 2022년 올해의 영화리뷰사이트 <br>> 2022년 올해의 영화굿즈사이트 <br>> 글로벌 영화리뷰사이트 최우수 사이트 선정</p>
          </div><!--/ About message end -->
          <div class="col-md-7 ts-padding about-img" style="height:650px;background:url(${pageContext.request.contextPath}/assets/images/aboutUs/au_images/pages/about-1.jpg) 50% 50% / cover no-repeat;">
          </div><!--/ About image end -->
        </div><!--/ Content row end -->
  
        <div class="row about-wrapper-bottom">
          <div class="col-md-7 ts-padding about-img" style="height:650px;background:url(${pageContext.request.contextPath}/assets/images/aboutUs/au_images/pages/about-2.jpg) 50% 50% / cover no-repeat;">
          </div><!--/ About image end -->
          <div class="col-md-5 ts-padding about-message">
            <h3>인생영화를 소장하는 <br>최신 트렌드!</h3>
            <p>영화 좀 볼 줄 아는 사람의<br>인생영화를 간직하는 색다른 방식<hr>영화사 공식 정품 굿즈는 물론, <br>CINE TOWN 굿즈샵에서만 판매하는<br>콜라보레이션 한정판 굿즈를 만나보세요!</p>
          </div><!--/ About message end -->
        </div><!--/ Content row end -->
  
        <!-- Company Profile -->
  
      </div><!--/ 1st container end -->
  
        
      <div class="gap-60"></div>
      <div class="gap-60"></div>
  
  
      <!-- Counter Start -->
      <div class="ts_counter_bg parallax parallax2">
      
        <div class="container">
          <div class="row wow fadeInLeft text-center">
            <div class="facts col-md-3 col-sm-6">
              <span class="facts-icon"><i class="xi-user"></i></span>
              <div class="facts-num">
                <span class="counter">1200</span>
              </div>
              <h3>Users</h3> 
            </div>
  
            <div class="facts col-md-3 col-sm-6">
              <span class="facts-icon"><i class="xi-movie"></i></span>
              <div class="facts-num">
                <span class="counter">1277</span>
              </div>
              <h3>Movie Reviews</h3> 
            </div>
  
            <div class="facts col-md-3 col-sm-6">
              <span class="facts-icon"><i class="xi-gift"></i></span>
              <div class="facts-num">
                <span class="counter">869</span>
              </div>
              <h3>Goods Sales</h3> 
            </div>
  
            <div class="facts col-md-3 col-sm-6">
              <span class="facts-icon"><i class="xi-trophy"></i></span>
              <div class="facts-num">
                <span class="counter">76</span>
              </div>
              <h3>Awards</h3> 
            </div>
  
            <div class="gap-40"></div>
  
            <div style="width: 100%;"><a href="#" class="btn btn-primary solid">최신 영화 리뷰</a></div>
  
          </div><!--/ row end -->
        </div><!--/ Container end -->
      </div><!--/ Counter end -->
    
    </section><!--/ Main container end -->
    <div class="gap-40"></div>
</div>
<!-- 회사소개 End -->


<!-- 공지사항 Start -->
<div class="container mt-3">
<div class="text-center">
	<h3 style="font-size: 2.5rem; margin-bottom: 1rem;">공지사항</h3>
</div>
<table class="table table-hover" style="text-align: center">
<thead class="table-dark">
  <tr>
    <th style="text-align: center">번호</th>
    <th style="text-align: center">제목</th>
    <th style="text-align: center">작성일</th>
  </tr>
 </thead>
 <c:forEach var="notice" items="${noticeList }">
  <tr>
    <td>${notice.noticeNum }</td>
    <td><a href="/TeamMovie/aboutUs/noticeView?noticeNum=${notice.noticeNum }">${notice.noticeTitle }</a></td>
    <td>${notice.noticeRegdate }</td>
  </tr>
  </c:forEach>
</table>
<!-- 로그인한 사용자만 글쓰기 버튼을 활성화 -->
<c:if test="${sessionScope.account.verify eq '9'}">
	<button type="button" style="color: white; border: 1px solid black; font-size: 1rem; padding: 0.5rem 0.7rem; background-color: black; border-radius: 10px; float:right;" onclick="location.href='${pageContext.request.contextPath}/aboutUs/noticeWrite';">글쓰기</button>
</c:if>
</div>
<div><br /></div>
<!-- 공지사항 End -->

<!-- contents End -->
</main>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/jquery.js"></script>
<!-- Bootstrap jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/bootstrap.min.js"></script>
<!-- Style Switcher -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/style-switcher.js"></script>
<!-- Owl Carousel -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/owl.carousel.js"></script>
<!-- PrettyPhoto -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/jquery.prettyPhoto.js"></script>
<!-- Bxslider -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/jquery.flexslider.js"></script>
<!-- Owl Carousel -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/cd-hero.js"></script>
<!-- Isotope -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/isotope.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/ini.isotope.js"></script>
<!-- Wow Animation -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/wow.min.js"></script>
<!-- SmoothScroll -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/smoothscroll.js"></script>
<!-- Eeasing -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/jquery.easing.1.3.js"></script>
<!-- Counter -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/jquery.counterup.min.js"></script>
<!-- Waypoints -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/waypoints.min.js"></script>
<!-- Template custom -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/au_js/custom.js"></script>
<script type="text/javascript" src='https://code.jquery.com/jquery-3.1.1.min.js'></script>
<script type="text/javascript" src='https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js'></script>
<script type="text/javascript" src='https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js'></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/aboutUs/table_script.js"></script>

</html>