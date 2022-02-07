<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
  <!-- google fonts -->
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>

        <!-- files -->
        <link href="${pageContext.request.contextPath}/assets/css/faq/faq_css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/faq/faq_css/magnific-popup.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/faq/faq_css/owl.carousel.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/faq/faq_css/owl.carousel.theme.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/faq/faq_css/ionicons.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/faq/faq_css/main.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>      
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="body-inner">
    <div id="banner-area">
      <img src="${pageContext.request.contextPath}/assets/images/aboutUs/au_images/banner/banner1_origin.jpg" alt ="" style="width: 100%;
      height: 100%;"/>
    </div><!-- Banner area end -->
<section class="faq">
    <div class="container page-bgc">
        <div class="row">
            <div class="col-sm-12">
                <div class="title-box">
                    <p>고객센터</p>
                    <h2 class="title mt0">자주 묻는 질문</h2>
                </div>
            </div>
        </div>
        <div class="row" style="padding-bottom: 100px;">
            <div class="col-sm-8 col-sm-offset-2">
                <div id="accordion" role="tablist" aria-multiselectable="true" class="panel-group">
                    <div class="panel panel-default">
                        <div id="headingOne" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">비회원도 주문이 가능한가요?</a>
                            </h4>
                        </div>
                        <div id="collapseOne" style="overflow: hidden;"role="tabpanel" aria-labelledby="headingOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                            <div class="panel-body">
                                <p>CINE TOWN 에서는 회원의 경우에만 주문하실 수 있도록 하고 있습니다. 회원가입은 무료이며, CINE TOWN 회원이 되시면 각종 이벤트 참여, 포인트 적립 등 다양한 혜택이 제공됩니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingTwo" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" class="">주문 후 배송지를 변경하고 싶어요.</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingTwo" class="panel-collapse collapse in" aria-expanded="true">
                            <div class="panel-body">
                                <p>[상품 준비 중] 상태까지는 고객센터(1577-1577)를 통해 배송지 변경이 가능합니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingThree"  role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed">상품 출고 후 배송 기간이 어떻게 되나요?</a>
                            </h4>
                        </div>
                        <div id="collapseThree" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingThree" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>택배사로 상품 출고 후 영업일 기준 1~2일 이내 수령 가능합니다. <br> 단, 도서 산간 지역 및 해당 지역의 택배사 물량에 따라 기간이 좀 더 소요될 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingFour" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour" class="collapsed">주문 취소를 하고 싶어요.</a>
                            </h4>
                        </div>
                        <div id="collapseFour" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingFour" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>[상품 준비 중] 상태까지는 주문취소가 가능하지만, 배송이 시작되는 [배송 중] 이후에는 주문 취소가 불가능합니다. <br>CINE TOWN 웹사이트의 주문내역 또는 1:1 상담 및 카톡, 고객센터(1577-1577)를 통해 주문 취소가 가능합니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingFive" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive" class="collapsed">작성한 리뷰를 삭제하는 방법이 궁금합니다.</a>
                            </h4>
                        </div>
                        <div id="collapseFive" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingFive" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>작성한 리뷰는 영화 페이지의 직접 수정, 삭제할 수 있습니다. <br>리뷰는 최소 5자 이상, 최대 400자 이하로 작성이 가능합니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingSix" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix" class="collapsed">리뷰 평점은 어떻게 계산되나요?</a>
                            </h4>
                        </div>
                        <div id="collapseSix" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingSix" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>리뷰 평점은 1부터 10까지의 점수를 기준으로 개인 리뷰어가 평가한 점수의 평균입니다. 별점은 1에서 10 사이의 숫라고 변환된 다음, 그 숫자들의 평균으로 구해집니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingSeven" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven" class="collapsed">리뷰를 남기려면 어떻게 하나요?</a>
                            </h4>
                        </div>
                        <div id="collapseSeven" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingSeven" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>로그인한 경우 영화 페이지의 별점 시스템을 사용하여 별점을 매기거나 댓글란에 리뷰를 남길 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingEight" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight" class="collapsed">리뷰가 등록되지 않습니다.</a>
                            </h4>
                        </div>
                        <div id="collapseEight" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingEight" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>깊이 있는 토론의 장을 마련하기 위해 CINE TOWN에서는 리뷰가 최소 20자 이상의 길이가 될 경우 등록될 수 있도록 하고 있습니다. 문제가 지속적으로 발생 시 고객센터(1577-1577)에 문의해주세요.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<!-- 강혜수 게시판 Body 시작 -->
<div class="container mt-3">
<div class="text-center">
	<h3 style="font-size: 2.5rem; margin-bottom: 1rem;">질문 게시판</h3>
</div>
<table class="table table-hover" style="text-align: center">
<thead class="table-dark">
  <tr>
    <th style="text-align: center">번호</th>
    <th style="text-align: center">제목</th>
    <th style="text-align: center">작성일</th>
  </tr>
 </thead>
 <c:forEach var="qna" items="${qnaList }">
  <tr>
    <td>${qna.qnaNum }</td>
    <td><a href="/TeamMovie/aboutUs/qnaView?qnaNum=${qna.qnaNum }">${qna.qnaTitle }</a></td>
    <td>${qna.qnaRegdate }</td>
  </tr>
  </c:forEach>
</table>
<button type="button" style="color: white; border: 1px solid black; font-size: 1rem; padding: 0.5rem 0.7rem; background-color: black; border-radius: 10px; float:right;" onclick="location.href='${pageContext.request.contextPath}/aboutUs/qnaWrite';">질문하기</button>
<!-- 로그인한 사용자만 글쓰기 버튼을 활성화 -->
<%-- <c:if test="${sessionScope.account.verify != 'null'}">
	<button type="button" style="color: white; border: 1px solid black; font-size: 1rem; padding: 0.5rem 0.7rem; background-color: black; border-radius: 10px; float:right;" onclick="location.href='${pageContext.request.contextPath}/aboutUs/noticeWrite';">질문하기</button>
</c:if> --%>


</div>
<div><br /></div>
<div><br /></div>
<div><br /></div>

</div>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/script.js"></script>
</html>