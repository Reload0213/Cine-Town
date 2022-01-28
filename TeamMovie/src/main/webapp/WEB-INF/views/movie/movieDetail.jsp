<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<!-- 이영주 영화 상세 페이지 통합 css 파트 시작  -->


<!-- ElegantFonts CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/movieDetail/elegant-fonts.css">

<!-- themify-icons CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/movieDetail/themify-icons.css">

<!-- Swiper CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/movieDetail/swiper.min.css">

<!-- Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/movieDetail/style.css">
<style>
 #heart label {
       
       color: transparent; /* 기존 이모지 컬러 제거 */
       text-shadow: 0 0 0 black; /* 새 이모지 색상 부여 */
     }
     #heart input[type="checkbox"] {
       display: none; /* 라디오박스 감춤 */
     }
    
   
     #heart input[type="checkbox"]:checked+i {
       text-shadow: 0 0 0 red; /* 마우스 클릭 체크 */
     }
     </style>
<!-- 영화 상세 페이지 통합 css 파트 종료  -->

</head>
<%@ include file="../include/header.jsp"%>
<!-- 영화상세 페이지 영화파트 html 시작 -->
<body class="single-blog-post">
	<div class="page-header">


		<div class="page-header-overlay"
			style="height: 1000px; background-image: url('${movieVO.mvBgPath}');">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="entry-header"
							style="text-shadow: 3px 5px 5px #000; line-height: 2em; font-size: 2em">
							<h1 class="entry-title">${movieVO.mvTitle}</h1>

							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>주연</span>
								</div>

								<div class="post-comments">
									<a href="#">${movieVO.mvActor}</a>
								</div>
							</div>
							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>시청 가능 연령</span>
								</div>

								<div class="post-comments">
									<a href="#">${movieVO.mvAge} 이용가</a>
								</div>
							</div>
							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>장르</span>
								</div>

								<div class="post-comments">
									<a href="#">${movieVO.mvGenre}</a>
								</div>
							</div>
							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>러닝 타임</span>
								</div>

								<div class="post-comments">
									<a href="#">${movieVO.mvRuntime} 분</a>
								</div>
							</div>
							<!-- .entry-meta -->
						</div>
						<!-- .entry-header -->
					</div>
					<!-- .col -->
				</div>
				<!-- .row -->
			</div>
			<!-- .container -->
		</div>
		<!-- .page-header-overlay -->
	</div>
	<!-- .page-header -->

	<div class="container">
		<div class="row">
			<div class="col-12 offset-lg-1 col-lg-10" style="width: 100%;">
				<div class="featured-image">
					<img src="${movieVO.mvPosterPath}" alt="" style="width: 100%;">

					<div class="posted-date position-absolute">
						<div class="day">⭐ ${movieVO.mvAvgRate}</div>
					</div>
					<!-- .posted-date -->
				</div>
				<!-- .featured-image -->
			</div>
			<!-- .col -->
		</div>
		<!-- .row -->

		<div class="row">
			<div class="col-12 offset-lg-1 col-lg-1"
				style="font-size: 2.5em; text-align: right;">
				<div class="post-share">
					<h3>share</h3>

					<ul class="flex flex-wrap align-items-center p-0 m-0">
						<li><a href="#"><i class="xi-facebook-official""></i></a></li>
						<li><a href="#"><i class="xi-twitter"></i></a></li>
						<li><a href="#"><i class="xi-instagram"></i></a></li>
						<li><a href="#"><i class="xi-youtube"></i></a></li>
						<li><a href="#"><i class="xi-naver"></i></a></li>
					</ul>
				</div>
				<!-- .post-share -->
			</div>
			<!-- .col -->

			<div class="col-12 col-lg-8">
				<div class="single-post-wrap">
					<p>${movieVO.mvContent1}</p>


					<p>${movieVO.mvContent2}</p>



					${movieVO.mvTrailer}

					<h3 class="mb-3">관람 포인트</h3>

					<p>${movieVO.mvContent3}</p>

					<p>${movieVO.mvContent4}</p>
				</div>
				<!-- .single-post-wrap -->

				<div class="tags-links mt-4">
					<ul class="d-flex flex-wrap align-items-center p-0 m-0">
						<li><a href="#">action</a></li>
						<li><a href="#">comic</a></li>
						<li><a href="#">mavel</a></li>
					</ul>
				</div>
				<!-- .tags-links -->

				<div class="related-blog-posts">
					<div
						class="entry-heading flex flex-wrap justify-content-between align-items-center">
						<h2 class="entry-title">같은 장르 영화 추천</h2>

						<a href="${pageContext.request.contextPath}/movie/movieMenu">영화
							전체 보러가기</a>
					</div>
					<!-- .entry-heading -->

					<div class="row mx-m-25">
						<div class="col-12 col-lg-6 px-25">
							<div class="blog-post-content">
								<figure class="blog-post-thumbnail position-relative m-0">
									<a href="#"><img
										src="${pageContext.request.contextPath}/assets/images/movieDetail/b-5.jpg"
										alt=""></a>

									<div class="posted-date position-absolute">
										<div class="day">23</div>
										<div class="month">mar</div>
									</div>
								</figure>
								<!-- .blog-post-thumbnail -->

								<div class="blog-post-content-wrap">
									<div class="entry-header">
										<h2 class="entry-title">
											<a href="#">Which investment project should my company
												choose?</a>
										</h2>

										<div class="entry-meta flex flex-wrap align-items-center">
											<div class="post-author">
												<a href="#">Ms. Lara Croft </a>
											</div>

											<div class="post-comments">
												<a href="#">02 Comments</a>
											</div>
										</div>
										<!-- .entry-meta -->
									</div>
									<!-- .entry-header -->
								</div>
								<!-- .blog-post-content-wrap -->
							</div>
							<!-- .blog-post-content -->
						</div>
						<!-- .col -->

						<div class="col-12 col-lg-6 px-25">
							<div class="blog-post-content">
								<figure class="blog-post-thumbnail position-relative m-0">
									<a href="#"><img
										src="${pageContext.request.contextPath}/assets/images/movieDetail/b-6.jpg"
										alt=""></a>

									<div class="posted-date position-absolute">
										<div class="day">23</div>
										<div class="month">mar</div>
									</div>
								</figure>
								<!-- .blog-post-thumbnail -->

								<div class="blog-post-content-wrap">
									<div class="entry-header">
										<h2 class="entry-title">
											<a href="#">Which investment project should my company
												choose?</a>
										</h2>

										<div class="entry-meta flex flex-wrap align-items-center">
											<div class="post-author">
												<a href="#">Ms. Lara Croft </a>
											</div>

											<div class="post-comments">
												<a href="#">02 Comments</a>
											</div>
										</div>
										<!-- .entry-meta -->
									</div>
									<!-- .entry-header -->
								</div>
								<!-- .blog-post-content-wrap -->
							</div>
							<!-- .blog-post-content -->
						</div>
						<!-- .col -->
					</div>
					<!-- .row -->
				</div>
				<!-- .related-course -->


				<div class="post-comments-wrap">
					<div class="post-comments">

						<div class="comments-form">
							<div class="comment-respond">
								<h3 class="comment-reply-title">댓글 남기기</h3>

								<div class="comment-form">
									<textarea class="rp-comment" rows="4"
										placeholder="하고 싶은말을 나눠보세요"></textarea>
									<input class="set-comment" type="submit" value="댓글 남기기">
								</div>

								<!-- .comment-form -->
							</div>
							<!-- .comment-respond -->
						</div>



						<!-- .comments-form -->
						<ol class="comment-list">
							<li class="comment">
								<article class="comment-body">
									<figure class="comment-author-avatar">
										<img
											src="${pageContext.request.contextPath}/assets/images/movieDetail/c-1.png"
											alt="">
									</figure>
									<!-- .comment-author-avatar -->

									<div class="comment-wrap">
										<div class="comment-author">
											<span class="comment-meta d-block"> <a href="#">27
													Aug 2018</a>
											</span>
											<!-- .comment-meta -->

											<span class="fn"> <a href="#">Chris Hadfield</a>
											</span>
											<!-- .fn -->
										</div>
										<!-- .comment-author -->

										<p>Neque porro quisquam est, qui dolorem ipsum quia dolor
											sit amet, consectetur, adipisci velit, sed quia non numquam
											eius modi</p>

										<div class="reply">
											<a href="#">좋아요</a> <a href="#">댓글 달기</a>
										</div>
										<!-- .reply -->
									</div>
									<!-- .comment-wrap -->

									<div class="clearfix"></div>
								</article> <!-- .comment-body --> <!-- .comment -->
						</ol>
						<!-- .comment-list -->
					</div>
					<!-- .post-comments -->


				</div>
				<!-- .post-comments-wrap -->
			</div>
			<!-- .col -->
		</div>
		<!-- .row -->
	</div>
	<!-- .container -->

	<!-- 영화상세 페이지 영화파트 html 끝 -->



	<!-- 영화상세 페이지 굿즈파트 html 시작 -->

	<section class="featured-courses vertical-column courses-wrap">
		<div class="container">
			<div class="row mx-m-25">
				<div class="col-12 px-25">
					<div
						class="heading flex flex-wrap justify-content-between align-items-center">
						<h2 class="entry-title">관련 상품들</h2>

						<nav class="courses-menu mt-3 mt-lg-0">
							<ul
								class="flex flex-wrap justify-content-md-end align-items-center">
								<li class="active"><a href="#">전체</a></li>
								<li><a href="#">옷</a></li>
								<li><a href="#">장난감</a></li>
								<li><a href="#">포스터</a></li>
							</ul>
						</nav>
						<!-- .courses-menu -->
					</div>
					<!-- .heading -->
				</div>
				<!-- .col -->

				<div class="col-12 col-md-6 col-lg-4 px-25">
					<div class="course-content">
						<figure class="course-thumbnail">
							<a href="#"><img
								src="${pageContext.request.contextPath}/assets/images/movieDetail/1.jpg"
								alt=""></a>
						</figure>
						<!-- .course-thumbnail -->

						<div class="course-content-wrap">
							<div class="entry-header">
								<h2 class="entry-title">
									<a href="#">The Complete Android Developer Course</a>
								</h2>

								<div class="entry-meta flex align-items-center">
									<div class="course-author">
										<a href="#">Ms. Lara Croft </a>
									</div>

									<div class="course-date">July 21, 2018</div>
								</div>
								<!-- .course-date -->
							</div>
							<!-- .entry-header -->

							<footer
								class="entry-footer flex justify-content-between align-items-center">
								<div class="course-cost">
									$45 <span class="price-drop">$68</span>
								</div>
								<!-- .course-cost -->

								<div
									class="course-ratings flex justify-content-end align-items-center">
									<span class="xi-star checked"></span> <span
										class="xi-star checked"></span> <span class="xi-star checked"></span>
									<span class="xi-star checked"></span> <span class="xi-star-o"></span>

									<span class="course-ratings-count">(4 votes)</span>
								</div>
								<!-- .course-ratings -->
							</footer>
							<!-- .entry-footer -->
						</div>
						<!-- .course-content-wrap -->
					</div>
					<!-- .course-content -->
				</div>
				<!-- .col -->

				<div class="col-12 col-md-6 col-lg-4 px-25">
					<div class="course-content">
						<figure class="course-thumbnail">
							<a href="#"><img
								src="${pageContext.request.contextPath}/assets/images/movieDetail/2.jpg"
								alt=""></a>
						</figure>
						<!-- .course-thumbnail -->

						<div class="course-content-wrap">
							<div class="entry-header">
								<h2 class="entry-title">
									<a href="#">The Ultimate Drawing Course Beginner to
										Advanced</a>
								</h2>

								<div class="entry-meta flex align-items-center">
									<div class="course-author">
										<a href="#">Michelle Golden</a>
									</div>

									<div class="course-date">Mar 14, 2018</div>
								</div>
								<!-- .course-date -->
							</div>
							<!-- .entry-header -->

							<footer
								class="entry-footer flex justify-content-between align-items-center">
								<div class="course-cost">
									<span class="free-cost">Free</span>
								</div>
								<!-- .price-drop -->

								<div
									class="course-ratings flex justify-content-end align-items-center">
									<span class="xi-star checked"></span> <span
										class="xi-star checked"></span> <span class="xi-star checked"></span>
									<span class="xi-star checked"></span> <span class="xi-star-o"></span>

									<span class="course-ratings-count">(4 votes)</span>
								</div>
								<!-- .course-ratings -->
							</footer>
							<!-- .entry-footer -->
						</div>
						<!-- .course-content-wrap -->
					</div>
					<!-- .course-content -->
				</div>
				<!-- .col -->

				<div class="col-12 col-md-6 col-lg-4 px-25">
					<div class="course-content">
						<figure class="course-thumbnail">
							<a href="#"><img
								src="${pageContext.request.contextPath}/assets/images/movieDetail/3.jpg"
								alt=""></a>
						</figure>
						<!-- .course-thumbnail -->

						<div class="course-content-wrap">
							<div class="entry-header">
								<h2 class="entry-title">
									<a href="#">The Complete Digital Marketing Course</a>
								</h2>

								<div class="entry-meta flex align-items-center">
									<div class="course-author">
										<a href="#">Ms. Lucius</a>
									</div>

									<div class="course-date">Dec 18, 2018</div>
								</div>
								<!-- .course-date -->
							</div>
							<!-- .entry-header -->

							<footer
								class="entry-footer flex justify-content-between align-items-center">
								<div class="course-cost">
									$55 <span class="price-drop">$78</span>
								</div>
								<!-- .course-cost -->

								<div
									class="course-ratings flex justify-content-end align-items-center">
									<span class="xi-star checked"></span> <span
										class="xi-star checked"></span> <span class="xi-star checked"></span>
									<span class="xi-star checked"></span> <span class="xi-star-o"></span>

									<span class="course-ratings-count">(4 votes)</span>
								</div>
								<!-- .course-ratings -->
							</footer>
							<!-- .entry-footer -->
						</div>
						<!-- .course-content-wrap -->
					</div>
					<!-- .course-content -->
				</div>
				<!-- .col -->

				<div class="col-12 col-md-6 col-lg-4 px-25">
					<div class="course-content">
						<figure class="course-thumbnail">
							<a href="#"><img
								src="${pageContext.request.contextPath}/assets/images/movieDetail/4.jpg"
								alt=""></a>
						</figure>
						<!-- .course-thumbnail -->

						<div class="course-content-wrap">
							<div class="entry-header">
								<h2 class="entry-title">
									<a href="#">The Unreal Engine Developer Course</a>
								</h2>

								<div class="entry-meta flex align-items-center">
									<div class="course-author">
										<a href="#">Mr. John Wick</a>
									</div>

									<div class="course-date">Otc 17, 2018</div>
								</div>
								<!-- .course-date -->
							</div>
							<!-- .entry-header -->

							<footer
								class="entry-footer flex justify-content-between align-items-center">
								<div class="course-cost">
									<span class="free-cost">Free</span>
								</div>
								<!-- .course-cost -->

								<div
									class="course-ratings flex justify-content-end align-items-center">
									<span class="xi-star checked"></span> <span
										class="xi-star checked"></span> <span class="xi-star checked"></span>
									<span class="xi-star checked"></span> <span class="xi-star-o"></span>

									<span class="course-ratings-count">(4 votes)</span>
								</div>
								<!-- .course-ratings -->
							</footer>
							<!-- .entry-footer -->
						</div>
						<!-- .course-content-wrap -->
					</div>
					<!-- .course-content -->
				</div>
				<!-- .col -->

				<div class="col-12 col-md-6 col-lg-4 px-25">
					<div class="course-content">
						<figure class="course-thumbnail">
							<a href="#"><img
								src="${pageContext.request.contextPath}/assets/images/movieDetail//5.jpg"
								alt=""></a>
						</figure>
						<!-- .course-thumbnail -->

						<div class="course-content-wrap">
							<div class="entry-header">
								<h2 class="entry-title">
									<a href="#">Progressive Web Apps (PWA) - The Complete Guide</a>
								</h2>

								<div class="entry-meta flex align-items-center">
									<div class="course-author">
										<a href="#">Mr. Tom Redder</a>
									</div>

									<div class="course-date">Sep 14, 2018</div>
								</div>
								<!-- .course-date -->
							</div>
							<!-- .entry-header -->

							<footer
								class="entry-footer flex justify-content-between align-items-center">
								<div class="course-cost">
									$38 <span class="price-drop">$48</span>
								</div>
								<!-- .course-cost -->

								<div
									class="course-ratings flex justify-content-end align-items-center">
									<span class="xi-star checked"></span> <span
										class="xi-star checked"></span> <span class="xi-star checked"></span>
									<span class="xi-star checked"></span> <span class="xi-star-o"></span>

									<span class="course-ratings-count">(4 votes)</span>
								</div>
								<!-- .course-ratings -->
							</footer>
							<!-- .entry-footer -->
						</div>
						<!-- .course-content-wrap -->
					</div>
					<!-- .course-content -->
				</div>
				<!-- .col -->

				<div class="col-12 col-md-6 col-lg-4 px-25">
					<div class="course-content">
						<figure class="course-thumbnail">
							<a href="#"><img
								src="${pageContext.request.contextPath}/assets/images/movieDetail/6.jpg"
								alt=""></a>
						</figure>
						<!-- .course-thumbnail -->

						<div class="course-content-wrap">
							<div class="entry-header">
								<h2 class="entry-title">
									<a href="#">Cryptocurrency Investment Course 2018</a>
								</h2>

								<div class="entry-meta flex align-items-center">
									<div class="course-author">
										<a href="#">Russell Stephens</a>
									</div>

									<div class="course-date">Nov 06, 2018</div>
								</div>
								<!-- .course-date -->
							</div>
							<!-- .entry-header -->

							<footer
								class="entry-footer flex justify-content-between align-items-center">
								<div class="course-cost">
									<span class="free-cost">Free</span>
								</div>
								<!-- .course-cost -->

								<div
									class="course-ratings flex justify-content-end align-items-center">
									<span class="xi-star checked"></span> <span
										class="xi-star checked"></span> <span class="xi-star checked"></span>
									<span class="xi-star checked"></span> <span class="xi-star-o"></span>

									<span class="course-ratings-count">(4 votes)</span>
								</div>
								<!-- .course-ratings -->
							</footer>
							<!-- .entry-footer -->
						</div>
						<!-- .course-content-wrap -->
					</div>
					<!-- .course-content -->
				</div>
				<!-- .col -->

				<div class="col-12 px-25 flex justify-content-center">
					<a class="btn" href="#">전체 굿즈 상품 보러가기</a>
				</div>
				<!-- .col -->
			</div>
			<!-- .row -->
		</div>
		<!-- .container -->
	</section>
	<!-- .courses-wrap -->
	<!-- 영화상세 페이지 굿즈파트 html 종료 -->




	<%@ include file="../include/footer.jsp"%>


	<!-- 이영주 영화 상세 페이지 통합 js 파트 시작  -->
	<script
		src="${pageContext.request.contextPath}/assets/js/headerFooter/jquery-3.3.1.min.js"></script>
	<script type='text/javascript'
		src='${pageContext.request.contextPath}/assets/js/movieDetail/swiper.min.js'></script>
	<script type='text/javascript'
		src='${pageContext.request.contextPath}/assets/js/movieDetail/masonry.pkgd.min.js'></script>
	<script type='text/javascript'
		src='${pageContext.request.contextPath}/assets/js/movieDetail/jquery.collapsible.min.js'></script>
	<script type='text/javascript'
		src='${pageContext.request.contextPath}/assets/js/movieDetail/custom.js'></script>










	<script type="text/javascript">
		$(function(){
			// 글 번호에 맞는 댓글 들고오기
			$.ajax({
				url:"${pageContext.request.contextPath}/ReviewReply/get/${movieVO.mvNum}",
				type:"GET",
				dataType : "json",
				success : function(data){
					//console.log(data);
					for(const item of data){
						let usernum = ${sessionScope.account.userNum};
						
						const rpCommentList = document.querySelector(".comment-list"); //댓글 목록
						const li = document.createElement("li");
						/* li.style="background-color:gray;"; */
						rpCommentList.append(li);
						//묶어주는 div생성
						
						//이름이랑 별점 묶어주기 끝
						const top_info = document.createElement("div"); 
						top_info.classList.add("top_info"); //class 부여
						li.prepend(top_info);
						top_info.style="display:flex;";
						
						const writername = document.createElement("span"); //이름 엘리먼트 생성
						writername.classList.add("writername");
						writername.innerText = item.rpWritername; //작성자 이름 주입
						top_info.append(writername);
						
						const bar = document.createElement("span");
						bar.classList.add("bar");
						bar.innerText = " | ";
						bar.style="margin: 0 10px;"
						top_info.append(bar);
						
						const star_wrapper = document.createElement("div"); //별이랑 숫자 묶는 div
						star_wrapper.classList.add("star_wrapper");
						const star = document.createElement("span"); //별 그림
						star.classList.add("xi-star"); //xi-con으로 클래스 부여해서 별 
						star.style="color:orange;";
						const rpStar = document.createElement("span");//별 카운트
						rpStar.innerText=item.rpStar;//별 숫자 db에서 가져온 것 
												
						top_info.append(star_wrapper);
						star_wrapper.append(star);//별 그림
						star_wrapper.append(rpStar);//별 숫자
						//이름이랑 별점 묶어주기 끝
						
						//댓글 내용
						const review_info = document.createElement("div")
						review_info.classList.add("review_info");
						review_info.innerText = item.rpComment;
						review_info.style="text-align:left; margin: 10px 0; font-size: 20px;";
						li.append(review_info);
						//댓글 내용 끝

			
						//좋아요, 날짜, 생성자(수정, 삭제 버튼) 묶어주기
						const bottom_info = document.createElement("div")
						bottom_info.classList.add("bottom_info");
						bottom_info.style="display:flex; justify-content:space-between";
						li.append(bottom_info);
						
					
						const date_like = document.createElement("div")//댓글, 좋아요 묶어주기
						date_like.classList.add("date_like");//클래스 부여
						date_like.style="display:flex";
						bottom_info.append(date_like);
						
						
						const date = document.createElement("span"); //댓글 생성 날짜
						date.innerText = item.rpDate;
						date.style="margin-right: 10px; font-size: 10px;";
						date_like.append(date);
						
												
						const like_button = document.createElement("div"); //좋아요 버튼
						like_button.classList.add("like_button");
						
						//form
						const heart_form = document.createElement("form");
						heart_form.setAttribute("id", "heart");
						heart_form.setAttribute("method", "post");
						heart_form.setAttribute("name", "heart");
						like_button.append(heart_form);
						
						//label
						const heart_label = document.createElement("label");
						heart_form.append(heart_label);
						
						//input
						const heart_input = document.createElement("input");
						heart_input.setAttribute("type", "checkbox");
						heart_input.setAttribute("name","heart");
						heart_input.setAttribute("id", "heart");
						heart_input
						heart_label.append(heart_input)
						
						//i
						const xi_heart = document.createElement("i");
						xi_heart.classList.add("xi-heart");
						heart_label.append(xi_heart);
						
						const heart_score = document.createElement("span");
						heart_score.innerText = item.rpLike;
						heart_label.append(heart_score);
						
						
						
						//like_button.innerText = item.rpLike;
						//const heart = document.createElement("span");//하트 그림
						//heart.classList.add("xi-heart-o");
						//like_button.prepend(heart);
						
						//like_button.type="checkbox"; //하트를 누르고 취소하고
						
										
						date_like.append(like_button);
						//xi-heart xi-heart-o
						//if.hear가 checked 되면 class name을 변경할 수 있는가? -> heart 색상 변경 QQQQQQQ 
						//xi-heart-o 를 클릭하면 이건 display none이 되고 색 있는게 block 되고..
						//li.prepend(writername); 
									
						
    
						const modify_delete = document.createElement("div"); //작성자가 본인일 경우 나타나게 하기
						modify_delete.classList.add("modify_delete");
						// 해당 유저가 쓴 댓글일 경우
				 		if(usernum == item.rpWriternum){
							//수정 버튼
							const modify_button = document.createElement("button");
							modify_button.innerText="수정";
							modify_button.style="margin-right: 10px;background:none;";
							//삭제 버튼
							const delete_button = document.createElement("button");
							delete_button.innerText="삭제";
							delete_button.style="background:none;"
							modify_delete.append(modify_button);
							modify_delete.append(delete_button);
						}
				
						bottom_info.append(modify_delete);
						const hr = document.createElement("hr");
						li.append(hr);
						
						
						
						
						
						
					}
				}
			});
			
			//댓글 DB에 등록하기
			$(".set-comment").click(function(){
				let rpComment = $(".rp-comment").val();
					console.log(rpComment);
				
				if(rpComment.length > 0){
					let comment_data = {rpComment, mvNum:"${movieVO.mvNum}"};
													
						console.log(comment_data);
					$.ajax({
						url:"${pageContext.request.contextPath}/ReviewReply/set",
						type:"POST",
						data:JSON.stringify(comment_data), //보내는 형태
						contentType : "application/json; charset=utf-8",
						dataType : "json", //받는 형태
						success:function(data){
							let usernum = data.rpWriternum;
							
							const rpCommentList = document.querySelector(".comment-list");
							const li = document.createElement("li");
							const div = document.createElement("div");
							const h3 = document.createElement("h3");
							h3.innerText = data.rpWritername;
							const p = document.createElement("p");
							p.innerText = data.rpComment;
							// 삭제 버튼
							const delete_button = document.createElement("button");
							delete_button.innerText = "삭제";
							const like_button = document.createElement("button");
							like_button.innerText = "좋아요";
							
								
							rpCommentList.append(li);
							
							// 수정 버튼
							const modify_button = document.createElement("button");
							modify_button.innerText = "수정";
							
						
							
							div.append(modify_button);
							div.append(delete_button);
														
							div.prepend(p);
							div.prepend(h3);
														
							rpCommentList.append(div);
						}
					});
				}else{
					alert("댓글을 입력해주세요");
				}
			});
		});
	</script>


</body>
</html>
