<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <%@ include file="../include2/header.jsp" %> --%>
	<%@ include file="../include/header.jsp"%>
<head>

<!--  스타일추가 -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/premiereDetail/premiereDetail-page1.css">
 

 
</head>

<main>





<!--임승혁 바디 시작  -->


<div class="mainCon">
    <nav class="nav2">
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

<%@ include file="voteForm.jsp"%>


<!-- <div class="commentCon">
	<h5>총 0건의 COMMENT가 있습니다</h5>
	<div class="commentBox">
	   <textarea name="" id="comment" cols="10" rows="10" class="comment"></textarea>
	   <button class="comSubmit">등록</button>
	
	</div>
</div> -->

</div>






<!-- 임승혁 바디끝  -->




<%@ include file="../include2/footer.jsp" %>

<!--header&footer script-->
<script
	src="${pageContext.request.contextPath}/assets/js/headerFooter/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/headerFooter/bootstrap.min.js"></script>
<!--header&footer script-->





</body>
</html>