<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="tableDiv">
<table id="fantasyTable" class="display responsive no-wrap order-column">
  <div class="text-center">
  <h3>공지사항</h3>
</div>
<thead>
  <tr>
    <th>Rank</th>
    <th>Customer</th>
    <th>City</th>
    <th>State</th>
    <th>Total Points</th>
    <th>Entries</th>
  </tr>
 </thead>
  <tr>
    <td>ㅇㅇㅇㅇㅇ</td>
    <td>RALOㅇㄹㅇS COMFORT, INC.</td>
    <td>CA</td>
    <td>CHATㅇㄹㅇㄹㅇORTH</td>
    <td>113</td>
    <td>2</td>
  </tr>
  <tr>
    <td>1</td>
    <td>RALOS COMFORT, INC.</td>
    <td>CA</td>
    <td>CHATSWORTH</td>
    <td>113</td>
    <td>2</td>
  </tr>
  
  <tr>
    <td>2</td>
    <td>ALL AIR APPLIANCE MASTERS</td>
    <td>CA</td>
    <td>MONTCLAIR</td>
    <td>103</td>
    <td>2</td>
  </tr>
  <tr>
    <td>3</td>
    <td>GVK MECHANIC SERVICES</td>
    <td>CA</td>
    <td>SAN DIEGO</td>
    <td>46</td>
    <td>0</td>
  </tr>
  <tr>
    <td>4</td>
    <td>GLOVER & SON HTG & A/C</td>
    <td>CA</td>
    <td>FREMONT</td>
    <td>42</td>
    <td>0</td>
  </tr>
  <tr>
    <td>5</td>
    <td>R&R AIR CONDITIONING</td>
    <td>CA</td>
    <td>FRESNO</td>
    <td>41</td>
    <td>0</td>
  </tr>
  <tr>
    <td>6</td>
    <td>BWR HEATING & COOLING</td>
    <td>CA</td>
    <td>NORCO</td>
    <td>37</td>
    <td>0</td>
  </tr>
  <tr>
    <td>7</td>
    <td>COMFORT AIR INC.</td>
    <td>CA</td>
    <td>STOCKTON</td>
    <td>36</td>
    <td>0</td>
  </tr>
  <tr>
    <td>8</td>
    <td>TRUE BLUE HTG. & AC</td>
    <td>CA</td>
    <td>ONTARIO</td>
    <td>35</td>
    <td>0</td>
  </tr>
  <tr>
    <td>9</td>
    <td>SANFORD AND SON'S MECHANICAL</td>
    <td>CA</td>
    <td>OAKLEY</td>
    <td>25</td>
    <td>0</td>
  </tr>
  <tr>
    <td>10</td>
    <td>JOHN BROWN HEATING & AIR</td>
    <td>CA</td>
    <td>TWIN PEAKS</td>
    <td>24</td>
    <td>0</td>
  </tr>
  <tr>
    <td>11</td>
    <td>POLAR AIR SERVICES</td>
    <td>CA</td>
    <td>CLAYTON</td>
    <td>23</td>
    <td>0</td>
  </tr>
  <tr>
    <td>12</td>
    <td>COMFORT CARE</td>
    <td>CA</td>
    <td>PANORAMA CITY</td>
    <td>20</td>
    <td>0</td>
  </tr>
  <tr>
    <td>13</td>
    <td>BAY AREA HVAC & APPLIANCE</td>
    <td>CA</td>
    <td>SAN JOSE</td>
    <td>20</td>
    <td>0</td>
  </tr>
  <tr>
    <td>14</td>
    <td>CONTRA COSTA CLIMATE CONTROL</td>
    <td>CA</td>
    <td>CONCORD</td>
    <td>18</td>
    <td>0</td>
  </tr>
  <tr>
    <td>15</td>
    <td>EL CERRITO HEATING</td>
    <td>CA</td>
    <td>EL CERRITO</td>
    <td>18</td>
    <td>0</td>
  </tr>
  <tr>
    <td>16</td>
    <td>PAUL HALLFORD</td>
    <td>CA</td>
    <td>SUNLAND</td>
    <td>16</td>
    <td>0</td>
  </tr>
  <tr>
    <td>17</td>
    <td>UNIVERSAL HVAC SYSTEMS</td>
    <td>CA</td>
    <td>SAN FERNANDO</td>
    <td>16</td>
    <td>0</td>
  </tr>
  <tr>
    <td>18</td>
    <td>BREEZEWAYS INC (CASH)</td>
    <td>AZ</td>
    <td>TUCSON</td>
    <td>15</td>
    <td>0</td>
  </tr>
  <tr>
    <td>19</td>
    <td>WEATHER TECH</td>
    <td>CA</td>
    <td>PITTSBURG</td>
    <td>14</td>
    <td>0</td>
  </tr>
  <tr>
    <td>20</td>
    <td>AAVCO PLUMBING-HVAC</td>
    <td>CA</td>
    <td>FONTANA</td>
    <td>12</td>
    <td>0</td>
  </tr>
  <tr>
    <td>21</td>
    <td>ROBERT HALL & SONS</td>
    <td>CA</td>
    <td>LA CRESCENTA</td>
    <td>12</td>
    <td>0</td>
  </tr>
  <tr>
    <td>22</td>
    <td>TALEGEN MECHANICAL SVC LLC</td>
    <td>AZ</td>
    <td>QUEEN CREEK</td>
    <td>11</td>
    <td>0</td>
  </tr>
  <tr>
    <td>23</td>
    <td>OLMAN MEJIA</td>
    <td>CA</td>
    <td>POMONA</td>
    <td>10</td>
    <td>0</td>
  </tr>
  <tr>
    <td>24</td>
    <td>AMERICOOL HEATING & AIR</td>
    <td>CA</td>
    <td>PLACENTIA</td>
    <td>10</td>
    <td>0</td>
  </tr>
  <tr>
    <td>25</td>
    <td>AIRSTREAM A/C & HTG.</td>
    <td>CA</td>
    <td>IRVINE</td>
    <td>10</td>
    <td>0</td>
  </tr>
  <tr>
    <td>26</td>
    <td>JOHNSON AIR MECHANICAL INC.</td>
    <td>CA</td>
    <td>SOLANA BEACH</td>
    <td>10</td>
    <td>0</td>
  </tr>
  <tr>
    <td>27</td>
    <td>AIR CRAFTS HTG & AIR COND. INC</td>
    <td>CA</td>
    <td>VALLEY CENTER</td>
    <td>10</td>
    <td>0</td>
  </tr>
  <tr>
    <td>28</td>
    <td>SCOTT GUERIN HEATING & COOLING</td>
    <td>AZ</td>
    <td>TUCSON</td>
    <td>10</td>
    <td>0</td>
  </tr>
</table>
</div>
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