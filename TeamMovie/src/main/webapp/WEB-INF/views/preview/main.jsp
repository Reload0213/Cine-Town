<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


  <!-- 임승혁 게시판 폰트 링크 끝 -->





<%@ include file="../include2/header.jsp" %>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/premiereMain/premiereMain.css"/>

</head>
<main>

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




<div class="rowMain">
 




  <a href="${pageContext.request.contextPath}/preview/detail/page1" class="column romance">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/mannyunijinado.jpg" alt=""></div>
      <p class="movieName">만 년이 지나도 변하지 않는게 ... </p>
      <p class="hashtags">#2021 #판타지 #로맨스 #코미디 #대만</p>   
    </div>
  
    </a>






  <a href="${pageContext.request.contextPath}/preview/detail/page2" class="column action">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/imsinhannamuwa.jpg" alt=""></div>
      <p class="movieName">임신한 나무와 도깨비 </p>
      <p class="hashtags">#2019 #판타지 #다큐멘터리 #한국</p>


      
    </div>
  
    </a>
  

 

  <a href="${pageContext.request.contextPath}/preview/detail/page3" class="column action">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/haejuk.jpg" alt=""></div>
      <p class="movieName">해적:도깨비 깃발 </p>
      <p class="hashtags">#2021 #액션 #모험 #코미디 #한국</p>


      
    </div>
 
  </a>




  <a href="${pageContext.request.contextPath}/preview/detail/page4" class="column drama">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/kingmaker.jpg" alt=""></div>
      <p class="movieName">킹메이커 </p>
      <p class="hashtags">#2021 #드라마 #한국</p>


      
    </div>
 
  </a>


  

  
  <a href="${pageContext.request.contextPath}/preview/detail/page5" class="column drama">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/france.jpg" alt=""></div>
      <p class="movieName">프랑스 </p>
      <p class="hashtags">#2021 #코미디 #드라마 #프랑스</p>


      
    </div>
 
  </a>

  <a href="${pageContext.request.contextPath}/preview/detail/page6" class="column action">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/kingsman.jpg" alt=""></div>
      <p class="movieName">킹스맨:퍼스트 에이전트 </p>
      <p class="hashtags">#2021 #액션 #모험 #코미디 #영국 #미국</p>
    </div>
 
  </a>



  <a href="${pageContext.request.contextPath}/preview/detail/page7" class="column romance">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/chungchoonjukni.jpg" alt=""></div>
      <p class="movieName">청춘적니 </p>
      <p class="hashtags">#2021 #로맨스 #드라마 #중국</p>


      
    </div>
 
  </a>

  


  <a href="${pageContext.request.contextPath}/preview/detail/page8" class="column romance">
    <div class="content">
      <div class="moviePosterCon item1"><img src="${pageContext.request.contextPath}/assets/images/premiereMain/movieposter/sil.jpg" alt=""></div>
      <p class="movieName">실:인연의 시작 </p>
      <p class="hashtags">#2020 #드라마 #로맨스 #일본</p>


      
    </div>
 
  </a>

 

 

 
  


</div>





</div>
























</main>

<%@ include file="../include2/footer.jsp" %>















<!--현 페이지 스크립트-->

<!-- 임승혁 게시판 body 스크립트 -->
<script src="${pageContext.request.contextPath}/assets/js/premiereMain/premiereMain.js"></script>








