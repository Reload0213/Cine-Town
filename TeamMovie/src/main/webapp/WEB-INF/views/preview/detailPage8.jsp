<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../include2/header.jsp" %> 
<head>

<!--  스타일추가 -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/premiereDetail/premiereDetail-page1.css">
 

 
</head>

<main>






<!--임승혁 바디 시작  -->

<div class="mainCon">
    <nav class="nav2">
     <h5>영화 [실:인연의 시작] 시사회 응모 이벤트</h5>
      <p class="date">2022.11.23 ~ 2022.11.28</p>
  </nav>
     <div class="contentCon item1">
       <img src="${pageContext.request.contextPath}/assets/images/premiereDetail/movieDetailPoster/sil1.jpg" alt="">
      </div>

      <div class="contentCon item2">
        <img src="${pageContext.request.contextPath}/assets/images/premiereDetail/movieDetailPoster/sil2" alt="">
       </div>
    
     

    <div class="iframeCon">
        <iframe src="https://www.youtube.com/embed/jec5qfItqEc?controls=0&mute=0&autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


    </div>

    <div class="contentCon item3">
      <img src="${pageContext.request.contextPath}/assets/images/premiereDetail/movieDetailPoster/sil3.jpg" alt="">
     </div>

     <div class="contentCon item4">
      <img src="${pageContext.request.contextPath}/assets/images/premiereDetail/movieDetailPoster/sil4.jpg" alt="">
     </div>


     <div class="contentCon item4">
      <img src="${pageContext.request.contextPath}/assets/images/premiereDetail/movieDetailPoster/sil5.jpg" alt="">
     </div>




    


</div>
 <div class="voteBtnCon"><a href="#" class="voteBtn">응모하기</a></div>


</div>



<%@ include file="voteForm.jsp"%>
<!-- 임승혁 바디끝  -->
<%@ include file="comment.jsp"%>



<%@ include file="../include2/footer.jsp" %>

<!--header&footer script-->
<script
	src="${pageContext.request.contextPath}/assets/js/headerFooter/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/headerFooter/bootstrap.min.js"></script>
<!--header&footer script-->





</body>
</html>