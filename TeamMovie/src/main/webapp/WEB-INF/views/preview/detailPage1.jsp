<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

 

  <!-- 임승혁 게시판 폰트 링크 끝 -->
  
  <!-- bootstrap core css -->
 
<head>
 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/premiereDetail/premiereDetail-page1.css">

  
  
    
    <!-- header & footer css-->


</head>

<body>

<%@ include file="../include/header.jsp" %>

  


<!-- 임승혁 시사회 페이지 바디메인 시작입니다. -->



<!-- 임승혁 시사회 페이지 디테일 영화해적 바디시작  시작 -->




<div class="mainCon">
    <nav class="nav">
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