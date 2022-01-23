<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap" rel="stylesheet">

  <!-- 임승혁 게시판 폰트 링크 끝 -->
  
  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/index/indexCSS/bootstrap.css" />

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="${pageContext.request.contextPath}/assets/fonts/index/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/assets/css/index/indexCSS/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="${pageContext.request.contextPath}/assets/css/index/indexCSS/responsive.css" rel="stylesheet" />
  <!-- 인덱스 기존 템플릿 영역 끝입니다. -->
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/premiereMain/premiereMain.css">
</head>

<body class="template-index ">
  <!-- header section strats -->
  <header class="header_section" style="background-color: #232830;">
      <div class="container">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
              <a class="navbar-brand" href="index.html">
                  <span>
                      CGV
                  </span>
              </a>

              <button class="navbar-toggler" type="button" data-toggle="collapse"
                  data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                  aria-label="Toggle navigation">
                  <span class=""> </span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav  mx-auto ">
                      <li class="nav-item active">
                          <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="menu.html">Menu</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="about.html">About</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="book.html">Book Table</a>
                      </li>
                  </ul>
                  <div class="user_option">
                      <a href="" class="user_link">
                          <i class="fa fa-user" aria-hidden="true"></i>
                      </a>
                      <a class="cart_link" href="#">
                          <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                              xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029"
                              style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                              <g>
                                  <g>
                                      <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
               c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                                  </g>
                              </g>
                              <g>
                                  <g>
                                      <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
               C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
               c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
               C457.728,97.71,450.56,86.958,439.296,84.91z" />
                                  </g>
                              </g>
                              <g>
                                  <g>
                                      <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
               c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                                  </g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                              <g>
                              </g>
                          </svg>
                      </a>
                      <form class="form-inline">
                          <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                              <i class="fa fa-search" aria-hidden="true"></i>
                          </button>
                      </form>
                      <a href="" class="order_online">
                          Order Online
                      </a>
                  </div>
              </div>
          </nav>
      </div>
  </header>
<!-- end header section -->
 

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
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/mannyunijinado.jpg" alt=""></div>
      <p class="movieName">만 년이 지나도 변하지 않는게 ... </p>
      <p class="hashtags">#2021 #판타지 #로맨스 #코미디 #대만</p>


    </div>
   
    </a>






  <a href="premiereDetail-page2.html" class="column action">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/imsinhannamuwa.jpg" alt=""></div>
      <p class="movieName">임신한 나무와 도깨비 </p>
      <p class="hashtags">#2019 #판타지 #다큐멘터리 #한국</p>


      
    </div>
  
    </a>
  

 

  <a href="premiereDetail-page3.html" class="column action">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/haejuk.jpg" alt=""></div>
      <p class="movieName">해적:도깨비 깃발 </p>
      <p class="hashtags">#2021 #액션 #모험 #코미디 #한국</p>


      
    </div>
 
  </a>




  <a href="premiereDetail-page4.html" class="column drama">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/kingmaker.jpg" alt=""></div>
      <p class="movieName">킹메이커 </p>
      <p class="hashtags">#2021 #드라마 #한국</p>


      
    </div>
 
  </a>


  

  
  <a href="premiereDetail-page5.html" class="column drama">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/france.jpg" alt=""></div>
      <p class="movieName">프랑스 </p>
      <p class="hashtags">#2021 #코미디 #드라마 #프랑스</p>


      
    </div>
 
  </a>

  <a href="premiereDetail-page6.html" class="column action">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/kingsman.jpg" alt=""></div>
      <p class="movieName">킹스맨:퍼스트 에이전트 </p>
      <p class="hashtags">#2021 #액션 #모험 #코미디 #영국 #미국</p>


      
    </div>
 
  </a>



  <a href="premiereDetail-page7.html" class="column romance">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/chungchoonjukni.jpg" alt=""></div>
      <p class="movieName">청춘적니 </p>
      <p class="hashtags">#2021 #로맨스 #드라마 #중국</p>


      
    </div>
 
  </a>

  


  <a href="premiereDetail-page8.html" class="column romance">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/sil.jpg" alt=""></div>
      <p class="movieName">실:인연의 시작 </p>
      <p class="hashtags">#2020 #드라마 #로맨스 #일본</p>


      
    </div>
 
  </a>

 

 

 
  


</div>





</div>

<!-- footer section -->
  <footer class="footer_section">
    <div class="container">
        <div class="row">
            <div class="col-md-4 footer-col">
                <div class="footer_contact">
                    <h4>
                        Contact Us
                    </h4>
                    <div class="contact_link_box">
                        <a href="">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <span>
                                Location
                            </span>
                        </a>
                        <a href="">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <span>
                                Call +01 1234567890
                            </span>
                        </a>
                        <a href="">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <span>
                                demo@gmail.com
                            </span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 footer-col">
                <div class="footer_detail">
                    <a href="" class="footer-logo">
                        CGV
                    </a>
                    <p>
                        Necessary, making this the first true generator on the Internet. It uses a dictionary of
                        over 200 Latin words, combined with
                    </p>
                    <div class="footer_social">
                        <a href="">
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                        </a>
                        <a href="">
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                        </a>
                        <a href="">
                            <i class="fa fa-linkedin" aria-hidden="true"></i>
                        </a>
                        <a href="">
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                        </a>
                        <a href="">
                            <i class="fa fa-pinterest" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 footer-col">
                <h4>
                    Opening Hours
                </h4>
                <p>
                    Everyday
                </p>
                <p>
                    10.00 Am -10.00 Pm
                </p>
            </div>
        </div>
        <div class="footer-info">
            <p>
                &copy; <span id="displayYear"></span> All Rights Reserved By
                <a href="https://html.design/">Free Html Templates</a><br><br>
                &copy; <span id="displayYear"></span> Distributed By
                <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>
            </p>
        </div>
    </div>
</footer>
<!-- footer section -->













<!--header&footer script-->
<script src="${pageContext.request.contextPath}/assets/js/GoodsMainjs/vendor/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/GoodsMainjs/bootstrap.min.js"></script>

<!--현 페이지 스크립트-->

<!-- 임승혁 게시판 body 스크립트 -->
<script src="${pageContext.request.contextPath}/assets/js/premiereMain/premiereMain.js"></script>








</body>
</html>