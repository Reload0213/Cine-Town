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
							<div class="entry-header" style="text-shadow: 3px 5px 5px #000; line-height: 2em; font-size: 2em">
								<h1 class="entry-title">${movieVO.mvTitle}</h1>

								<div
									class="entry-meta flex justify-content-center align-items-center">
									<div class="post-author" style="color:#FEDD6A;">
										<span>주연</span>
									</div>

									<div class="post-comments">
										<a href="#">${movieVO.mvActor}</a>
									</div>
								</div>
								<div
									class="entry-meta flex justify-content-center align-items-center">
									<div class="post-author" style="color:#FEDD6A;">
										<span>시청 가능 연령</span>
									</div>

									<div class="post-comments">
										<a href="#">${movieVO.mvAge} 이용가</a>
									</div>
								</div>
								<div
									class="entry-meta flex justify-content-center align-items-center">
									<div class="post-author" style="color:#FEDD6A;">
										<span>장르</span>
									</div>

									<div class="post-comments">
										<a href="#">${movieVO.mvGenre}</a>
									</div>
								</div>
								<div
									class="entry-meta flex justify-content-center align-items-center">
									<div class="post-author" style="color:#FEDD6A;">
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

							<a href="${pageContext.request.contextPath}/movie/movieMenu">영화 전체 보러가기</a>
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
							<h3 class="comments-title">
								<span class="comments-number">02 Comments</span>
							</h3>

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
									</article> <!-- .comment-body -->

									<ol class="children">
										<li class="comment">
											<article class="comment-body">
												<figure class="comment-author-avatar">
													<img
														src="${pageContext.request.contextPath}/assets/images/movieDetail/c-2.png"
														alt="">
												</figure>
												<!-- .comment-author-avatar -->

												<div class="comment-wrap">
													<div class="comment-author">
														<span class="comment-meta d-block"> <a href="#">27
																Aug 2018</a>
														</span>
														<!-- .comment-meta -->

														<span class="fn"> <a href="#">Albert Einstein</a>
														</span>
														<!-- .fn -->
													</div>
													<!-- .comment-author -->

													<p>Neque porro quisquam est, qui dolorem ipsum quia
														dolor sit amet, consectetur, adipisci velit, sed quia non
														numquam eius modi</p>

													<div class="reply">
														<a href="#">좋아요</a> <a href="#">댓글 달기</a>
													</div>
													<!-- .reply -->
												</div>
												<!-- .comment-wrap -->

												<div class="clearfix"></div>
											</article> <!-- .comment-body -->
										</li>
										<!-- .comment -->
									</ol> <!-- .children -->
								</li>
								<!-- .comment -->

								<li class="comment">
									<article class="comment-body">
										<figure class="comment-author-avatar">
											<img
												src="${pageContext.request.contextPath}/assets/images/movieDetail/c-3.png"
												alt="">
										</figure>
										<!-- .comment-author-avatar -->

										<div class="comment-wrap">
											<div class="comment-author">
												<span class="comment-meta d-block"> <a href="#">27
														Aug 2018</a>
												</span>
												<!-- .comment-meta -->

												<span class="fn"> <a href="#">Henry Ford</a>
												</span>
												<!-- .comment-autho -->
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
									</article> <!-- .comment-body -->
								</li>
								<!-- .comment -->
							</ol>
							<!-- .comment-list -->
						</div>
						<!-- .post-comments -->

						<div class="comments-form">
							<div class="comment-respond">
								<h3 class="comment-reply-title">댓글 남기기</h3>

								<div class="comment-form">
									<textarea class="rp-comment" rows="4" placeholder="하고 싶은말을 나눠보세요"></textarea>
									<input class="set-comment" type="submit" value="댓글 남기기">
								</div>

								<!-- .comment-form -->
							</div>
							<!-- .comment-respond -->
						</div>
						<!-- .comments-form -->
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
						
						const rpCommentList = document.querySelector(".comment-list");
						const li = document.createElement("li");
						const div = document.createElement("div");
						const writername = document.createElement("h3");
						const date = document.createElement("span");
						const comment = document.createElement("p");

											
						const like_button = document.createElement("button");
						/* like_button.type="checkbox"; //하트를 누르고 취소하고 */
						const heart = document.createElement("span");//하트 그림
						
						const star = document.createElement("span");
						const rpStar = document.createElement("span");
						
						writername.innerText = item.rpWritername;
						comment.innerText = item.rpComment;
						date.innerText = item.rpDate;
						like_button.innerText = item.rpLike;
						heart.classList.add("xi-heart-o");
						
						like_button.prepend(heart);
						
						//xi-heart xi-heart-o
						
						//if.hear가 checked 되면 class name을 변경할 수 있는가? -> heart 색상 변경 QQQQQQQ 
								//xi-heart-o 를 클릭하면 이건 display none이 되고 색 있는게 block 되고..
								
						rpStar.innerText=item.rpStar;//별 숫자
						star.classList.add("xi-star"); //별 그림
						/* star_rate.append(star); */
												
						li.prepend(comment);
						li.prepend(writername);
						li.prepend(date);
						li.prepend(div);
						li.prepend(like_button);
						li.prepend(rpStar);
						li.prepend(star);
						
						
						rpCommentList.append(li);
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
					alert("댓굴을 달아주세요");
				}
			});
		});
	</script>


</body>
</html>
