<%@page import="kr.co.goodee39.movie.vo.MovieVO"%>
<%@page import="java.util.List"%>
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
     
     .date_like span:first-child {
		padding-top: 0.3em;
	}
	
	/* 별점 */
      #myform fieldset {
        display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
        border: 0; /* 필드셋 테두리 제거 */
      }
      #myform input[type="radio"] {
        display: none; /* 라디오박스 감춤 */
      }
      #myform label {
        font-size: 3em; /* 이모지 크기 */
        color: transparent; /* 기존 이모지 컬러 제거 */
        text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
      }
      #myform label:hover {
        text-shadow: 0 0 0 #FEDD6A; /* 마우스 호버 */
      }
      #myform label:hover ~ label {
        text-shadow: 0 0 0 #FEDD6A; /* 마우스 호버 뒤에오는 이모지들 */
      }
      #myform fieldset {
        display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
        direction: rtl; /* 이모지 순서 반전 */
        border: 0; /* 필드셋 테두리 제거 */
      }
      #myform fieldset legend {
        text-align: left;
      }
      #myform input[type="radio"]:checked ~ label {
        text-shadow: 0 0 0 #FEDD6A; /* 마우스 클릭 체크 */
      }
     </style>
<!-- 영화 상세 페이지 통합 css 파트 종료  -->

</head>
<%@ include file="../include/header.jsp"%>
<!-- 영화상세 페이지 영화파트 html 시작 -->
<body class="single-blog-post">
	<div class="page-header">


		<div class="page-header-overlay"
			style="height: 1000px; background-image: url('${mvDetail.mvBgPath}');">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="entry-header"
							style="text-shadow: 3px 5px 5px #000; line-height: 2em; font-size: 2em">
							<h1 class="entry-title">${mvDetail.mvTitle}</h1>

							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>주연</span>
								</div>

								<div class="post-comments">
									<span style="color:white;">${mvDetail.mvActor}</span>
								</div>
							</div>
							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>시청 가능 연령</span>
								</div>

								<div class="post-comments">
									<span style="color:white;">${mvDetail.mvAge} 이용가</span>
								</div>
							</div>
							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>평점</span>
								</div>

								<div class="post-comments">
									<span class="xi-star checked" style="color:#FEDD6A"></span><span style="color:white;">${mvDetail.mvAvgRate}점</span>
								</div>
							</div>
							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>장르</span>
								</div>

								<div class="post-comments">
									<span style="color:white;">${mvDetail.mvGenre}</span>
								</div>
							</div>
							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>러닝 타임</span>
								</div>

								<div class="post-comments">
									<span style="color:white;">${mvDetail.mvRuntime} 분</span>
								</div>
							</div>
							<div
								class="entry-meta flex justify-content-center align-items-center">
								<div class="post-author" style="color: #FEDD6A;">
									<span>배급사</span>
								</div>

								<div class="post-comments">
									<span style="color:white;">${mvDetail.mvProducer}</span>
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
					<img src="${mvDetail.mvPosterPath}" alt="" style="width: 100%;">

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
					<p>${mvDetail.mvContent1}</p>


					<p>${mvDetail.mvContent2}</p>



					${mvDetail.mvTrailer}

					<h3 class="mb-3">관람 포인트</h3>

					<p>${mvDetail.mvContent3}</p>

					<p>${mvDetail.mvContent4}</p>
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
						<h2 class="entry-title">같은 장르 영화 추천(${mvDetail.mvGenre})</h2>

						<a href="${pageContext.request.contextPath}/movie/movieMenu">영화
							전체 보러가기</a>
					</div>
					<!-- .entry-heading -->

					<div class="row mx-m-25">
						<c:forEach var="item" items="${genreList}">
						<div class="col-12 col-lg-6 px-25">
							<div class="blog-post-content">
								<figure class="blog-post-thumbnail position-relative m-0">
									<a href="#"><img
										src="${item.mvPosterPath}"
										alt=""></a>

									<div class="posted-date position-absolute">
										<span class="xi-star checked" style="color:#FEDD6A"><div style="color:#fff" class="day">${item.mvAvgRate}</div>
									</div>
								</figure>
								<!-- .blog-post-thumbnail -->

								<div class="blog-post-content-wrap">
									<div class="entry-header">
										<h2 class="entry-title">
											<a href="#">${item.mvTitle}</a>
										</h2>

										<div style="margin-left: 4em;" class="entry-meta flex flex-wrap align-items-center">
											<div class="post-author">
												<a href="#">주연 </a>
											</div>

											<div class="post-comments">
												<a href="#">${item.mvActor}</a>
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
					</c:forEach>
					</div>
					<!-- .row -->
				</div>
				<!-- .related-course -->


				<div class="post-comments-wrap">
					<div class="post-comments">

						<div class="comments-form">
							<div class="comment-respond">
								<h3 class="comment-reply-title">댓글 남기기</h3>
						<form name="myform" id="myform" method="post">
					        <fieldset>
					            <input type="radio" name="rating" value="10" id="rate1"><label for="rate1">⭐</label>
					            <input type="radio" name="rating" value="9" id="rate2"><label for="rate2">⭐</label>
					            <input type="radio" name="rating" value="8" id="rate3"><label for="rate3">⭐</label>
					            <input type="radio" name="rating" value="7" id="rate4"><label for="rate4">⭐</label>
					            <input type="radio" name="rating" value="6" id="rate5"><label for="rate5">⭐</label>
					            <input type="radio" name="rating" value="5" id="rate6"><label for="rate6">⭐</label>
					            <input type="radio" name="rating" value="4" id="rate7"><label for="rate7">⭐</label>
					            <input type="radio" name="rating" value="3" id="rate8"><label for="rate8">⭐</label>
					            <input type="radio" name="rating" value="2" id="rate9"><label for="rate9">⭐</label>
					            <input type="radio" name="rating" value="1" id="rate10"><label for="rate10">⭐</label>
					        </fieldset>
					    </form>

								<div class="comment-form">
									<textarea class="rp-comment" rows="4"
										placeholder="어떻게 보셨나요? 자유롭게 작성해주세요"></textarea>
									<input class="set-comment" type="submit" value="댓글 남기기">
								</div>

								<!-- .comment-form -->
							</div>
							<!-- .comment-respond -->
						</div>
						<br/>
						<br/>
						<br/>
						<div style="text-align: left;"><h5><span id="totalCnt">${mvDetail.mvRpCount}</span>건</h5></div>
						<hr>

						<!-- .comments-form -->
						<ol class="comment-list">
							<li class="comment">
								
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


<c:forEach var="item" items="${relateGoodsList }">
				<div class="col-12 col-md-6 col-lg-4 px-25">
					<div class="course-content">
						<figure class="course-thumbnail">
							<a href="${pageContext.request.contextPath }/goods/${item.gdsNum}?id=${item.gdsNum}"><img
								src="${item.gdsImage1 }"
								alt=""></a>
						</figure>
						<!-- .course-thumbnail -->

						<div class="course-content-wrap">
							<div class="entry-header">
								<h2 class="entry-title">
									<a href="${pageContext.request.contextPath }/goods/${item.gdsNum}?id=${item.gdsNum}">${item.gdsName }</a>
								</h2>

						<!-- 		<div class="entry-meta flex align-items-center">
									<div class="course-author">
										<a href="#">Ms. Lara Croft </a>
									</div>

									<div class="course-date">July 21, 2018</div>
								</div> -->
								<!-- .course-date -->
							</div>
							<!-- .entry-header -->

							<footer
								class="entry-footer flex justify-content-between align-items-center">
								<div class="course-cost">
									${item.gdsPrice }원<!--  <span class="price-drop">$68</span> -->
								</div>
								<!-- .course-cost -->

								<div
									class="course-ratings flex justify-content-end align-items-center">
									<c:forEach begin="1" end="${item.grScore }" var="i">
									<span class="xi-star checked"></span>
									</c:forEach>
									<!--  <span class="xi-star checked"></span> 
									 <span class="xi-star checked"></span>
									<span class="xi-star checked"></span>  -->
									<c:forEach begin="1" end="${5 - item.grScore }" var="i">
									<span class="xi-star-o"></span>
									</c:forEach>
									<!-- <span class="course-ratings-count">(4 votes)</span> -->
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
				</c:forEach>
				
				
				

				<div class="col-12 px-25 flex justify-content-center">
					<a class="btn" href="${pageContext.request.contextPath}/goods/goodsMenu">전체 굿즈 상품 보러가기</a>
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

	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>








	<script type="text/javascript">
		$(function(){
			// 글 번호에 맞는 댓글 들고오기
			$.ajax({
				url:"${pageContext.request.contextPath}/ReviewReply/get/${mvDetail.mvNum}",
				type:"GET",
				dataType : "json",
				success : function(data){
					//console.log(data);
					for(const item of data){
						let usernum = "${sessionScope.account.userNum}";	
						
						
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
							
							
							modify_button.addEventListener("click", function(){
								const modify_title = document.createElement("h3");
								modify_title.innerText="댓글 수정하기";
								
								
								// 수정 star_form
								const star_form = document.createElement("form");
								star_form.setAttribute("id", "myform");
								star_form.setAttribute("method", "post");
								star_form.setAttribute("name", "myform");
								
								// 수정 fieldset, star_input
								const fieldset = document.createElement("fieldset");

								const star_label1 = document.createElement("label");
								star_label1.setAttribute("for", "mRate1");
								star_label1.innerText = "⭐";
								const star_input1 = document.createElement("input");
								star_input1.setAttribute("type", "radio");
								star_input1.setAttribute("id", "mRate1");
								star_input1.setAttribute("value", "10");
								star_input1.setAttribute("name", "mRating");
								
								const star_label2 = document.createElement("label");
								star_label2.setAttribute("for", "mRate2");
								star_label2.innerText = "⭐";
								const star_input2 = document.createElement("input");
								star_input2.setAttribute("type", "radio");
								star_input2.setAttribute("id", "mRate2");
								star_input2.setAttribute("value", "9");
								star_input2.setAttribute("name", "mRating");
								
								const star_label3 = document.createElement("label");
								star_label3.setAttribute("for", "mRate3");
								star_label3.innerText = "⭐";
								const star_input3 = document.createElement("input");
								star_input3.setAttribute("type", "radio");
								star_input3.setAttribute("id", "mRate3");
								star_input3.setAttribute("value", "8");
								star_input3.setAttribute("name", "mRating");
								
								const star_label4 = document.createElement("label");
								star_label4.setAttribute("for", "mRate4");
								star_label4.innerText = "⭐";
								const star_input4 = document.createElement("input");
								star_input4.setAttribute("type", "radio");
								star_input4.setAttribute("id", "mRate4");
								star_input4.setAttribute("value", "7");
								star_input4.setAttribute("name", "mRating");
								
								const star_label5 = document.createElement("label");
								star_label5.setAttribute("for", "mRate5");
								star_label5.innerText = "⭐";
								const star_input5 = document.createElement("input");
								star_input5.setAttribute("type", "radio");
								star_input5.setAttribute("id", "mRate5");
								star_input5.setAttribute("value", "6");
								star_input5.setAttribute("name", "mRating");
								
								const star_label6 = document.createElement("label");
								star_label6.setAttribute("for", "mRate6");
								star_label6.innerText = "⭐";
								const star_input6 = document.createElement("input");
								star_input6.setAttribute("type", "radio");
								star_input6.setAttribute("id", "mRate6");
								star_input6.setAttribute("value", "5");
								star_input6.setAttribute("name", "mRating");
								
								const star_label7 = document.createElement("label");
								star_label7.setAttribute("for", "mRate7");
								star_label7.innerText = "⭐";
								const star_input7 = document.createElement("input");
								star_input7.setAttribute("type", "radio");
								star_input7.setAttribute("id", "mRate7");
								star_input7.setAttribute("value", "4");
								star_input7.setAttribute("name", "mRating");
								
								const star_label8 = document.createElement("label");
								star_label8.setAttribute("for", "mRate8");
								star_label8.innerText = "⭐";
								const star_input8 = document.createElement("input");
								star_input8.setAttribute("type", "radio");
								star_input8.setAttribute("id", "mRate8");
								star_input8.setAttribute("value", "3");
								star_input8.setAttribute("name", "mRating");
								
								const star_label9 = document.createElement("label");
								star_label9.setAttribute("for", "mRate9");
								star_label9.innerText = "⭐";
								const star_input9 = document.createElement("input");
								star_input9.setAttribute("type", "radio");
								star_input9.setAttribute("id", "mRate9");
								star_input9.setAttribute("value", "2");
								star_input9.setAttribute("name", "mRating");
								
								const star_label10 = document.createElement("label");
								star_label10.setAttribute("for", "mRate10");
								star_label10.innerText = "⭐";
								const star_input10 = document.createElement("input");
								star_input10.setAttribute("type", "radio");
								star_input10.setAttribute("id", "mRate10");
								star_input10.setAttribute("value", "1");
								star_input10.setAttribute("name", "mRating");
								
								star_form.append(fieldset);
								fieldset.append(star_input1);
								fieldset.append(star_label1);
								fieldset.append(star_input2);
								fieldset.append(star_label2);
								fieldset.append(star_input3);
								fieldset.append(star_label3);
								fieldset.append(star_input4);
								fieldset.append(star_label4);
								fieldset.append(star_input5);
								fieldset.append(star_label5);
								fieldset.append(star_input6);
								fieldset.append(star_label6);
								fieldset.append(star_input7);
								fieldset.append(star_label7);
								fieldset.append(star_input8);
								fieldset.append(star_label8);
								fieldset.append(star_input9);
								fieldset.append(star_label9);
								fieldset.append(star_input10);
								fieldset.append(star_label10);
								
								// 수정 textarea
								const edit_div = document.createElement("div");
								const edit_textarea = document.createElement("textarea");
								edit_textarea.cols = "100";
								edit_textarea.rows = "5";
								
								edit_textarea.value = review_info.innerText;
								
								// 수정 버튼
								const edit_modify = document.createElement("button");
								edit_modify.innerText = "수정완료";
								const edit_cancel = document.createElement("button");
								edit_cancel.innerText = "취소";
								
								edit_div.append(modify_title);
								edit_div.append(star_form);
								edit_div.append(edit_textarea);
								edit_div.append(edit_modify);
								edit_div.append(edit_cancel);
								
								li.after(edit_div);
								li.style.display = "none";
								
								// 취소 버튼 클릭 시 이벤트
								edit_cancel.addEventListener("click", function(){
									li.style.display = "block";
									edit_div.remove();
								});
								
								// 수정완료 버튼 클릭 시 이벤트
								edit_modify.addEventListener("click", function(){
									//alert("수정완료 버튼 클릭");
									if(confirm("수정하시겠습니까")){
										let modify_rpComment = edit_textarea.value;
										let modify_rpStar = document.querySelector('input[name="mRating"]:checked').value;
										
										const modify_data = {rpComment:modify_rpComment, rpNum:item.rpNum, rpStar:modify_rpStar};
										
										$.ajax({
											url:"${pageContext.request.contextPath}/ReviewReply/update",
											type:"PATCH",
											data:JSON.stringify(modify_data),
											contentType : "application/json; charset=utf-8",
											dataType : "json",
											success:function(data){
												console.log(data);
												review_info.innerText = data.rpComment;
												rpStar.innerText = data.rpStar;
												li.style.display = "block";
												edit_div.remove();
											}
										});
									}
								});
							});
							
							
							
							//삭제 버튼
							const delete_button = document.createElement("button");
							delete_button.innerText="삭제";
							delete_button.style="background:none;"
							modify_delete.append(modify_button);
							modify_delete.append(delete_button);
							
							delete_button.addEventListener("click", function(){
								let yn = confirm("삭제하시겠습니까?");
								 if(yn){
									let dComment_data = {rpNum:item.rpNum};
									console.log(dComment_data);

									
									$.ajax({
										url:"${pageContext.request.contextPath}/ReviewReply/delete",
										type:"DELETE",
										data:JSON.stringify(dComment_data),
										contentType : "application/json; charset=utf-8",
										dataType : "html",
										success:function(data){
											li.remove();
											document.querySelector('#totalCnt').innerText -= 1;
										}
									});
								} 
								
					 			});
						}
				
						bottom_info.append(modify_delete);
						const hr = document.createElement("hr");
						li.append(hr);
						
						
						
						
						
						
					}
				}
			});
			
			//댓글 DB에 등록하기
			$(".set-comment").click(function(){
				if(${not empty sessionScope.account}) {
					let rpComment = $(".rp-comment").val();
					let rpStar = $('input[name=rating]:checked').val();
					let rpDate = moment(new Date).format('YYYY-MM-DD HH:mm:ss');
						console.log(rpComment);
					
					if(rpComment.length > 0){
						let comment_data = {rpComment, mvNum:"${mvDetail.mvNum}", rpStar, rpDate};
														
							console.log(comment_data);
						$.ajax({
							url:"${pageContext.request.contextPath}/ReviewReply/set",
							type:"POST",
							data:JSON.stringify(comment_data), //보내는 형태
							contentType : "application/json; charset=utf-8",
							dataType : "json", //받는 형태
							success:function(data){
								let usernum = data.rpWriternum;
								
								let tCnt = parseInt(document.querySelector('#totalCnt').innerText);
								document.querySelector('#totalCnt').innerText = tCnt+1;
											
								
								
								const rpCommentList = document.querySelector(".comment-list"); //댓글 목록
								const li = document.createElement("li");
								/* li.style="background-color:gray;"; */
								rpCommentList.prepend(li);
								//묶어주는 div생성
								
								//이름이랑 별점 묶어주기 끝
								const top_info = document.createElement("div"); 
								top_info.classList.add("top_info"); //class 부여
								li.prepend(top_info);
								top_info.style="display:flex;";
								
								const writername = document.createElement("span"); //이름 엘리먼트 생성
								writername.classList.add("writername");
								writername.innerText = data.rpWritername; //작성자 이름 주입
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
								rpStar.innerText=data.rpStar;//별 숫자 db에서 가져온 것 
														
								top_info.append(star_wrapper);
								star_wrapper.append(star);//별 그림
								star_wrapper.append(rpStar);//별 숫자
								//이름이랑 별점 묶어주기 끝
								
								//댓글 내용
								const review_info = document.createElement("div")
								review_info.classList.add("review_info");
								review_info.innerText = data.rpComment;
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
								date.innerText = data.rpDate;
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
								heart_label.append(heart_input)
								
								//i
								const xi_heart = document.createElement("i");
								xi_heart.classList.add("xi-heart");
								heart_label.append(xi_heart);
								
								const heart_score = document.createElement("span");
								heart_score.innerText = data.rpLike;
								heart_label.append(heart_score);
								
								
								
												
								date_like.append(like_button);
											
							
		    
								const modify_delete = document.createElement("div"); //작성자가 본인일 경우 나타나게 하기
								modify_delete.classList.add("modify_delete");
								
								// 해당 유저가 쓴 댓글일 경우
						 		if(usernum == data.rpWriternum){
									//수정 버튼
									const modify_button = document.createElement("button");
									modify_button.innerText="수정";
									modify_button.style="margin-right: 10px;background:none;";
									
									
									modify_button.addEventListener("click", function(){
										// 수정 star_form
										const star_form = document.createElement("form");
										star_form.setAttribute("id", "myform");
										star_form.setAttribute("method", "post");
										star_form.setAttribute("name", "myform");
										
										// 수정 fieldset, star_input
										const fieldset = document.createElement("fieldset");
	
										const star_label1 = document.createElement("label");
										star_label1.setAttribute("for", "mRate1");
										star_label1.innerText = "⭐";
										const star_input1 = document.createElement("input");
										star_input1.setAttribute("type", "radio");
										star_input1.setAttribute("id", "mRate1");
										star_input1.setAttribute("value", "10");
										star_input1.setAttribute("name", "mRating");
										
										const star_label2 = document.createElement("label");
										star_label2.setAttribute("for", "mRate2");
										star_label2.innerText = "⭐";
										const star_input2 = document.createElement("input");
										star_input2.setAttribute("type", "radio");
										star_input2.setAttribute("id", "mRate2");
										star_input2.setAttribute("value", "9");
										star_input2.setAttribute("name", "mRating");
										
										const star_label3 = document.createElement("label");
										star_label3.setAttribute("for", "mRate3");
										star_label3.innerText = "⭐";
										const star_input3 = document.createElement("input");
										star_input3.setAttribute("type", "radio");
										star_input3.setAttribute("id", "mRate3");
										star_input3.setAttribute("value", "8");
										star_input3.setAttribute("name", "mRating");
										
										const star_label4 = document.createElement("label");
										star_label4.setAttribute("for", "mRate4");
										star_label4.innerText = "⭐";
										const star_input4 = document.createElement("input");
										star_input4.setAttribute("type", "radio");
										star_input4.setAttribute("id", "mRate4");
										star_input4.setAttribute("value", "7");
										star_input4.setAttribute("name", "mRating");
										
										const star_label5 = document.createElement("label");
										star_label5.setAttribute("for", "mRate5");
										star_label5.innerText = "⭐";
										const star_input5 = document.createElement("input");
										star_input5.setAttribute("type", "radio");
										star_input5.setAttribute("id", "mRate5");
										star_input5.setAttribute("value", "6");
										star_input5.setAttribute("name", "mRating");
										
										const star_label6 = document.createElement("label");
										star_label6.setAttribute("for", "mRate6");
										star_label6.innerText = "⭐";
										const star_input6 = document.createElement("input");
										star_input6.setAttribute("type", "radio");
										star_input6.setAttribute("id", "mRate6");
										star_input6.setAttribute("value", "5");
										star_input6.setAttribute("name", "mRating");
										
										const star_label7 = document.createElement("label");
										star_label7.setAttribute("for", "mRate7");
										star_label7.innerText = "⭐";
										const star_input7 = document.createElement("input");
										star_input7.setAttribute("type", "radio");
										star_input7.setAttribute("id", "mRate7");
										star_input7.setAttribute("value", "4");
										star_input7.setAttribute("name", "mRating");
										
										const star_label8 = document.createElement("label");
										star_label8.setAttribute("for", "mRate8");
										star_label8.innerText = "⭐";
										const star_input8 = document.createElement("input");
										star_input8.setAttribute("type", "radio");
										star_input8.setAttribute("id", "mRate8");
										star_input8.setAttribute("value", "3");
										star_input8.setAttribute("name", "mRating");
										
										const star_label9 = document.createElement("label");
										star_label9.setAttribute("for", "mRate9");
										star_label9.innerText = "⭐";
										const star_input9 = document.createElement("input");
										star_input9.setAttribute("type", "radio");
										star_input9.setAttribute("id", "mRate9");
										star_input9.setAttribute("value", "2");
										star_input9.setAttribute("name", "mRating");
										
										const star_label10 = document.createElement("label");
										star_label10.setAttribute("for", "mRate10");
										star_label10.innerText = "⭐";
										const star_input10 = document.createElement("input");
										star_input10.setAttribute("type", "radio");
										star_input10.setAttribute("id", "mRate10");
										star_input10.setAttribute("value", "1");
										star_input10.setAttribute("name", "mRating");
										
										star_form.append(fieldset);
										fieldset.append(star_input1);
										fieldset.append(star_label1);
										fieldset.append(star_input2);
										fieldset.append(star_label2);
										fieldset.append(star_input3);
										fieldset.append(star_label3);
										fieldset.append(star_input4);
										fieldset.append(star_label4);
										fieldset.append(star_input5);
										fieldset.append(star_label5);
										fieldset.append(star_input6);
										fieldset.append(star_label6);
										fieldset.append(star_input7);
										fieldset.append(star_label7);
										fieldset.append(star_input8);
										fieldset.append(star_label8);
										fieldset.append(star_input9);
										fieldset.append(star_label9);
										fieldset.append(star_input10);
										fieldset.append(star_label10);
										
										// 수정 textarea
										const edit_div = document.createElement("div");
										const edit_textarea = document.createElement("textarea");
										edit_textarea.cols = "100";
										edit_textarea.rows = "5";
										
										edit_textarea.value = review_info.innerText;
										
										// 수정 버튼
										const edit_modify = document.createElement("button");
										edit_modify.innerText = "수정완료";
										const edit_cancel = document.createElement("button");
										edit_cancel.innerText = "취소";
										
										edit_div.append(star_form);
										edit_div.append(edit_textarea);
										edit_div.append(edit_modify);
										edit_div.append(edit_cancel);
										
										li.after(edit_div);
										li.style.display = "none";
										
										// 취소 버튼 클릭 시 이벤트
										edit_cancel.addEventListener("click", function(){
											li.style.display = "block";
											edit_div.remove();
										});
										
										// 수정완료 버튼 클릭 시 이벤트
										edit_modify.addEventListener("click", function(){
											//alert("수정완료 버튼 클릭");
											if(confirm("수정하시겠습니까")){
												let modify_rpComment = edit_textarea.value;
												let modify_rpStar = document.querySelector('input[name="mRating"]:checked').value;
												
												const modify_data = {rpComment:modify_rpComment, rpNum:data.rpNum, rpStar:modify_rpStar};								
												$.ajax({
													url:"${pageContext.request.contextPath}/ReviewReply/update",
													type:"PATCH",
													data:JSON.stringify(modify_data),
													contentType : "application/json; charset=utf-8",
													dataType : "json",
													success:function(data){
														console.log(data);
														review_info.innerText = data.rpComment;
														rpStar.innerText = data.rpStar;
														li.style.display = "block";
														edit_div.remove();
													}
												});
											}
										});
									});
									
									
									
									//삭제 버튼
									const delete_button = document.createElement("button");
									delete_button.innerText="삭제";
									delete_button.style="background:none;"
									modify_delete.append(modify_button);
									modify_delete.append(delete_button);
									
									delete_button.addEventListener("click", function(){
										let yn = confirm("삭제하시겠습니까?");
										 if(yn){
											let dComment_data = {rpNum:data.rpNum};
											console.log(dComment_data);
											
											$.ajax({
												url:"${pageContext.request.contextPath}/ReviewReply/delete",
												type:"DELETE",
												data:JSON.stringify(dComment_data),
												contentType : "application/json; charset=utf-8",
												dataType : "html",
												success:function(data){
													li.remove();
													document.querySelector('#totalCnt').innerText -= 1;	
												}
											});
										} 
										
							 			});
								}
						 		
						 		
								
								bottom_info.append(modify_delete);
								const hr = document.createElement("hr");
								li.append(hr);
							}
						});
					}else{
						alert("댓글을 입력해주세요");
					}
					document.querySelector('.rp-comment').value = ''; // 텍스트창 초기화
				}else{
					alert("로그인 후 이용해주세요!");
				}	
			});
		});
	</script>


</body>
</html>
