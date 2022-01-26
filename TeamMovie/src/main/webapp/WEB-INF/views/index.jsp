<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <head>
    
    <!-- 강혜수 CSS Stylesheets 시작 -->
    
	<link rel="stylesheet" href="assets/css/index/gs_css/bootstrap.min.css"/>
	<link rel="stylesheet" href="assets/css/index/gs_css/owl.carousel.css"/>
	<link rel="stylesheet" href="assets/css/index/gs_css/style.css"/>
	<link rel="stylesheet" href="assets/css/index/gs_css/animate.css"/>
	
	<!-- 강혜수 CSS Stylesheets 종료 -->
	
    
    
    
    
	 <!-- 이영주 매거진 css 영역 시작 -->
	  
	 <meta name="description" content="">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	
	 <link rel="stylesheet" href="assets/css/index/slick/slick.css"> 
	 <link rel="stylesheet" href="assets/css/index/slick/slick-theme.css">
	 <link rel="stylesheet" href="assets/css/index/bootstrap.css">
	
	
	 <!--Theme custom css -->
	 <link rel="stylesheet" href="assets/css/index/style.css">
	 <!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->
	
	 <!--Theme Responsive css-->
	 <link rel="stylesheet" href="assets/css/index/responsive.css" />
	 
	 <!-- 이영주 매거진 css 영역 종료 -->
	 
	 
  <!-- 김용현 바디 슬라이더 css 시작입니다. -->

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Free HTML Templates" name="keywords">
  <meta content="Free HTML Templates" name="description">

  <!-- Favicon -->
  <link href="assets/index/images/img/favicon.ico" rel="icon">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

  <!-- Libraries Stylesheet -->
  <link href="assets/js/footer_lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Customized Bootstrap Stylesheet -->
  <link href="assets/css/index/footer_css/style.css" rel="stylesheet">
  
  <!-- 김용현 바디 슬라이더 css 끝입니다. -->
	 
    </head>
	<%@ include file="include/header.jsp" %>
	<main>
	
	<a href="${pageContext.request.contextPath}/admin/main">관리자 테스트로 이동</a>
	<a href="${pageContext.request.contextPath}/user/myPage">유저 페이지로 이동</a>	
	<a href="${pageContext.request.contextPath}/user/signin">유저 페이지로 이동</a>	
	<a href="${pageContext.request.contextPath}/goods/goodsDetail">굿즈디테일페이지</a>
	<a href="${pageContext.request.contextPath}/goods/goodsMain">굿즈메인페이지</a>
	<a href="${pageContext.request.contextPath}/goods/goodsMenu">굿즈메뉴페이지</a>
	<a href="${pageContext.request.contextPath}/admin/adminShopCreatePage">관리자 상품생성 페이지</a>
	<a href="${pageContext.request.contextPath}/admin/adminShopCRUDPage">관리자 상품CRUD 페이지</a>
	<a href="${pageContext.request.contextPath}/movie/movieMenu">무비메뉴 페이지 이동</a>
	
	<!-- 강혜수 바디 -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="assets/images/index/gs_img/movie-1.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>큰 힘에는 <span>큰 책임이</span> 따른다!</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada <br> lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. <br>Suspendisse cursus faucibus finibus.</p>
						<a href="#" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="assets/images/index/gs_img/movie-2.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>짜릿한 <span>범죄</span> 액션</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada <br> lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. <br>Suspendisse cursus faucibus finibus.</p>
						<a href="#" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="assets/images/index/gs_img/movie-3.jpg">
				<div class="hs-text">
					<div class="container">
						<h2>매너가 <span>사람을</span> 만든다</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada <br> lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. <br>Suspendisse cursus faucibus finibus.</p>
						<a href="#" class="site-btn">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</section>









  <!-- Recent game section  -->
  <!-- 배경색 적용을 위해 스타일을 따로 넣었습니다 = -->
	<section class="recent-game-section spad set-bg" data-setbg="">
		<div class="container">
			<div class="section-title">
				<div class="cata new">new</div>
				<h2>Recent Movies</h2>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="recent-game-item">
						<div class="rgi-thumb set-bg" data-setbg="assets/images/index/gs_img/movie-1.jpg">
							<div class="cata new">new</div>
						</div>
						<div class="rgi-content">
							<h5>Suspendisse ut justo tem por, rutrum</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
							<a href="#" class="comment">3 Comments</a>
							<div class="rgi-extra">
								<div class="rgi-star"><img src="assets/images/index/gs_img/icons/star.png" alt=""></div>
								<div class="rgi-heart"><img src="assets/images/index/gs_img/icons/heart.png" alt=""></div>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recent-game-item">
						<div class="rgi-thumb set-bg" data-setbg="assets/images/index/gs_img/movie-2.jpg">
							<div class="cata racing">racing</div>
						</div>
						<div class="rgi-content">
							<h5>Susce pulvinar metus nulla, vel  facilisis sem </h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
							<a href="#" class="comment">3 Comments</a>
							<div class="rgi-extra">
								<div class="rgi-star"><img src="assets/images/index/gs_img/icons/star.png" alt=""></div>
								<div class="rgi-heart"><img src="assets/images/index/gs_img/icons/heart.png" alt=""></div>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recent-game-item">
						<div class="rgi-thumb set-bg" data-setbg="assets/images/index/gs_img/movie-3.jpg">
							<div class="cata adventure">Adventure</div>
						</div>
						<div class="rgi-content">
							<h5>Suspendisse ut justo tem por, rutrum</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
							<a href="#" class="comment">3 Comments</a>
							<div class="rgi-extra">
								<div class="rgi-star"><img src="assets/images/index/gs_img/icons/star.png" alt=""></div>
								<div class="rgi-heart"><img src="assets/images/index/gs_img/icons/heart.png" alt=""></div>
							</div>
						</div>
					</div>	
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="recent-game-item">
						<div class="rgi-thumb set-bg" data-setbg="assets/images/index/gs_img/movie-3.jpg">
							<div class="cata adventure">Adventure</div>
						</div>
						<div class="rgi-content">
							<h5>Suspendisse ut justo tem por, rutrum</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
							<a href="#" class="comment">3 Comments</a>
							<div class="rgi-extra">
								<div class="rgi-star"><img src="assets/images/index/gs_img/icons/star.png" alt=""></div>
								<div class="rgi-heart"><img src="assets/images/index/gs_img/icons/heart.png" alt=""></div>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recent-game-item">
						<div class="rgi-thumb set-bg" data-setbg="assets/images/index/gs_img/movie-2.jpg">
							<div class="cata adventure">Adventure</div>
						</div>
						<div class="rgi-content">
							<h5>Suspendisse ut justo tem por, rutrum</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
							<a href="#" class="comment">3 Comments</a>
							<div class="rgi-extra">
								<div class="rgi-star"><img src="assets/images/index/gs_img/icons/star.png" alt=""></div>
								<div class="rgi-heart"><img src="assets/images/index/gs_img/icons/heart.png" alt=""></div>
							</div>
						</div>
					</div>	
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recent-game-item">
						<div class="rgi-thumb set-bg" data-setbg="assets/images/index/gs_img/movie-1.jpg">
							<div class="cata adventure">Adventure</div>
						</div>
						<div class="rgi-content">
							<h5>Suspendisse ut justo tem por, rutrum</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
							<a href="#" class="comment">3 Comments</a>
							<div class="rgi-extra">
								<div class="rgi-star"><img src="assets/images/index/gs_img/icons/star.png" alt=""></div>
								<div class="rgi-heart"><img src="assets/images/index/gs_img/icons/heart.png" alt=""></div>
							</div>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</section>
	<!-- Recent game section end -->
  <!-- 강혜수 바디 섹션 끝 -->
























    <!-- 이영주 배우 인터뷰 섹션 시작 -->
            <!--Business Section-->
            <section id="business" class="business bg-grey roomy-70">
                <div class="container">
                    <div >
                        <div class="main_business">
                            <div class="col-md-6">
                                <div class="business_slid">
                                    <div class="slid_shap bg-grey"></div>
                                    <div style="padding: 0; margin-left: 0; height: 90%;" class="business_items text-center">
                                        <div class="business_item">
                                            <div class="business_img">
                                                <img src="https://img.gqkorea.co.kr/gq/2021/11/style_619dcd74214ac-760x1024.jpg" alt="" />
                                            </div>
                                        </div>

                                        <div class="business_item">
                                            <div class="business_img">
                                                <img src="https://img.gqkorea.co.kr/gq/2021/11/style_619dcd69c5719-760x1024.jpg" alt="" />
                                            </div>
                                        </div>

                                        <div class="business_item">
                                            <div class="business_img">
                                                <img src="https://img.gqkorea.co.kr/gq/2021/11/style_619dcd5970f8e-760x1024.jpg" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <div class="business_item sm-m-top-50">
                                    <h2 class="text-uppercase">이번 달의 배우 '이정재'</h2>
                                    <ul>
                                        <li><i class="fa fa-arrow-circle-right"></i> #오징어 게임</li>
                                        <li><i class="fa fa-arrow-circle-right"></i> #국민배우에서 글로벌 배우로</li>
                                        <li><i class="fa fa-arrow-circle-right"></i> #앞으로의 행보</li>
                                    </ul>
                                    <br>
                                    <br>
                                    <p class="m-top-20"><strong>'오징어 게임'의 인기가 엄청나다. 실감하고 있나?</strong>
                                        <br>
                                        <br>
                                        - 그렇다. SNS(사회관계망서비스)를 하고 있지 않지만(인스타그램 개설 전 인터뷰) '눈팅(눈으로만 본다는 뜻)'은 해서 실감하는 중이다. 많은 분이 올려주시는 사진, 영상이나 동료 배우들의 글을 보고 있다.
                                        <br>
                                        <br>
                                        <strong>'오징어 게임' 시나리오의 첫인상이 궁금하다</strong>
                                        <br>
                                        <br>    
                                        - 그로테스크(기괴)하다고 생각했다. 공포감이 느껴지더라. '서바이벌 게임' '데스 게임'이라고 할 수 있는데 게임마다 인물의 애환이나 고충이 잘 녹아 있더라. 그들이 왜 '오징어 게임'에 참가할 수밖에 없었는지 꼼꼼하게 설명이 되어 있었고 과장되지 않게 (서사를) 쌓았다. 1부를 지나 3, 4부가 되기까지 모든 캐릭터가 쌓아온 서사가 각 캐릭터의 엔딩, 감정을 효과적으로 자극했다. 그 점이 다른 작품과 차별화되어 있다고 느꼈다.
                                        </p>

                                    <div class="business_btn">
                                        <a href="${pageContext.request.contextPath}/interviewDetail" class="btn btn-default m-top-20">interview 더 보기</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- End off Business section -->
            <!-- 이영주 배우 인터뷰 섹션 끝 -->

















  






















































<!-- 김용현 바디 슬라이드 시작 영역입니다. -->
     <!-- Main News Slider Start -->
     <div class="container-fluid">
      <div class="row">
          <div class="col-lg-7 px-0">
              <div class="owl-carousel main-carousel position-relative">
                  <div class="position-relative overflow-hidden" style="height: 500px;">
                      <img class="img-fluid h-100" src="assets/images/index/footer_img/news-800x500-1.jpg" style="object-fit: cover;">
                      <div class="overlay">
                          <div class="mb-2">
                              <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                  href="">Business</a>
                              <a class="text-white" href="">Jan 01, 2045</a>
                          </div>
                          <a class="h2 m-0 text-white text-uppercase font-weight-bold" href="">Lorem ipsum dolor sit amet elit. Proin vitae porta diam...</a>
                      </div>
                  </div>
                  <div class="position-relative overflow-hidden" style="height: 500px;">
                      <img class="img-fluid h-100" src="assets/images/index/footer_img/news-800x500-2.jpg" style="object-fit: cover;">
                      <div class="overlay">
                          <div class="mb-2">
                              <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                  href="">Business</a>
                              <a class="text-white" href="">Jan 01, 2045</a>
                          </div>
                          <a class="h2 m-0 text-white text-uppercase font-weight-bold" href="">Lorem ipsum dolor sit amet elit. Proin vitae porta diam...</a>
                      </div>
                  </div>
                  <div class="position-relative overflow-hidden" style="height: 500px;">
                      <img class="img-fluid h-100" src="assets/images/index/footer_img/news-800x500-3.jpg" style="object-fit: cover;">
                      <div class="overlay">
                          <div class="mb-2">
                              <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                  href="">Business</a>
                              <a class="text-white" href="">Jan 01, 2045</a>
                          </div>
                          <a class="h2 m-0 text-white text-uppercase font-weight-bold" href="">Lorem ipsum dolor sit amet elit. Proin vitae porta diam...</a>
                      </div>
                  </div>
              </div>
          </div>
          <div class="col-lg-5 px-0">
              <div class="row mx-0">
                  <div class="col-md-6 px-0">
                      <div class="position-relative overflow-hidden" style="height: 250px;">
                          <img class="img-fluid w-100 h-100" src="assets/images/index/footer_img/news-700x435-1.jpg" style="object-fit: cover;">
                          <div class="overlay">
                              <div class="mb-2">
                                  <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                      href="">Business</a>
                                  <a class="text-white" href=""><small>Jan 01, 2045</small></a>
                              </div>
                              <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                          </div>
                      </div>
                  </div>
                  <div class="col-md-6 px-0">
                      <div class="position-relative overflow-hidden" style="height: 250px;">
                          <img class="img-fluid w-100 h-100" src="assets/images/index/footer_img/news-700x435-2.jpg" style="object-fit: cover;">
                          <div class="overlay">
                              <div class="mb-2">
                                  <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                      href="">Business</a>
                                  <a class="text-white" href=""><small>Jan 01, 2045</small></a>
                              </div>
                              <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                          </div>
                      </div>
                  </div>
                  <div class="col-md-6 px-0">
                      <div class="position-relative overflow-hidden" style="height: 250px;">
                          <img class="img-fluid w-100 h-100" src="assets/images/index/footer_img/news-700x435-3.jpg" style="object-fit: cover;">
                          <div class="overlay">
                              <div class="mb-2">
                                  <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                      href="">Business</a>
                                  <a class="text-white" href=""><small>Jan 01, 2045</small></a>
                              </div>
                              <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                          </div>
                      </div>
                  </div>
                  <div class="col-md-6 px-0">
                      <div class="position-relative overflow-hidden" style="height: 250px;">
                          <img class="img-fluid w-100 h-100" src="assets/images/index/footer_img/news-700x435-4.jpg" style="object-fit: cover;">
                          <div class="overlay">
                              <div class="mb-2">
                                  <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                      href="">Business</a>
                                  <a class="text-white" href=""><small>Jan 01, 2045</small></a>
                              </div>
                              <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit...</a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- Main News Slider End -->


  <!-- Breaking News Start -->
  <div class="container-fluid bg-dark py-3 mb-3">
      <div class="container">
          <div class="row align-items-center bg-dark">
              <div class="col-12">
                  <div class="d-flex justify-content-between">
                      <div class="bg-primary text-dark text-center font-weight-medium py-2" style="width: 170px;">Breaking News</div>
                      <div class="owl-carousel tranding-carousel position-relative d-inline-flex align-items-center ml-3"
                          style="width: calc(100% - 170px); padding-right: 90px;">
                          <div class="text-truncate"><a class="text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit. Proin interdum lacus eget ante tincidunt, sed faucibus nisl sodales</a></div>
                          <div class="text-truncate"><a class="text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor sit amet elit. Proin interdum lacus eget ante tincidunt, sed faucibus nisl sodales</a></div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- Breaking News End -->
	
	</main>
	
	<%@ include file="include/footer.jsp" %>
	
	
  <!-- 김용현 바디슬라이드 입니다. -->
      <!-- JavaScript Libraries -->
      <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
      <script src="assets/js/index/footer_lib/easing/easing.min.js"></script>
      <script src="assets/js/index/footer_lib/owlcarousel/owl.carousel.min.js"></script>
  
      <!-- Template Javascript -->
      <script src="assets/js/index/footer_js/main.js"></script>
      <!-- 김용현 바디슬라이드 종료 -->












      <!-- 이영주 매거진 슬라이드 시작 -->
      <script src="assets/js/index/vendor/jquery-1.11.2.min.js"></script>
      <script src="assets/js/index/jquery.magnific-popup.js"></script>
      <script src="assets/css/index/slick/slick.js"></script>
      <script src="assets/css/index/slick/slick.min.js"></script>



      <script src="assets/js/index/plugins.js"></script>
      <script src="assets/js/index/main.js"></script>
      <!-- 이영주 매거진 슬라이드 종료 -->








<!-- 강혜수 바디슬라이드 영역 -->
      	<!--====== Javascripts & Jquery ======-->
	<script src="assets/js/index/gs_js/jquery-3.2.1.min.js"></script>
	<script src="assets/js/index/gs_js/bootstrap.min.js"></script>
	<script src="assets/js/index/gs_js/owl.carousel.min.js"></script>
	<script src="assets/js/index/gs_js/jquery.marquee.min.js"></script>
	<script src="assets/js/index/gs_js/main.js"></script>
  <!-- 강혜수 바디 슬라이드 영역 종료 -->
	
