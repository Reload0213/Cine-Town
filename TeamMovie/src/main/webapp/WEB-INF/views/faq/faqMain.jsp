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
<div>
    <div class="col-md-12 heading text-center">
      <h2 class="title2">문의 게시판</h2>
    </div>
    <div class="row" style="padding-left: 80px; padding-bottom: 100px;">
        <div class="col-lg-9 col-lg-offset-1">
            <section class="rb-bbs rb-bbs-list">
                <div class="rb-bbs-body">
                    <table class="table">
                        <colgroup> 
                            <col width="50"> 
                            <col> 
                            <col width="80"> 
                            <col width="70"> 
                            <col width="90"> 
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="rb-num">번호</th>
                                <th class="rb-title">제목</th>
                                <th class="rb-user">글쓴이</th>
                                <th class="rb-hit">조회</th>
                                <th class="rb-time">작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="rb-notice">
                                <th class="rb-num" scope="row"><span class="label">문의</span></th>
                                <td class="rb-title">
                                    <a href="view.html">게시판 관련 푸터 CSS 적용 오류 발생</a>
                                    <span class="label" data-toggle="tooltip" title="사진"><i class="fa fa-camera-retro fa-lg"></i></span>
                                    <span class="label" data-toggle="tooltip" title="첨부파일"><i class="fa fa-floppy-o fa-lg"></i></span>
                                </td>
                                <td class="rb-user">
                                    <a class="btn btn-link" tabindex="0" role="button" data-profile="popover">관리자</a>
                                </td>
                                <td class="rb-hit">12</td>
                                <td class="rb-time">2022-01-19</td>
                            </tr>
                            <tr>
                                <th class="rb-num" scope="row">5</th>
                                <td class="rb-title">
                                    <span class="rb-category">분류1</span>
                                    <a href="view.html">공지사항1 <span class="badge">42</span></a>
                                    <span class="label" data-toggle="tooltip" title="사진"><i class="fa fa-camera-retro fa-lg"></i></span>
                                    <span class="label" data-toggle="tooltip" title="첨부파일"><i class="fa fa-floppy-o fa-lg"></i></span>
                                    <span class="rb-new"></span>
                                </td>
                                <td class="rb-user">
                                    <a class="btn btn-link" tabindex="0" role="button" data-profile="popover">관리자</a>
                                </td>
                                <td class="rb-hit">23</td>
                                <td class="rb-time">2022-01-19</td>
                            </tr>
                            <tr>
                                <th class="rb-num" scope="row">4</th>
                                <td class="rb-title">
                                    <span class="rb-category">분류1</span>
                                    <a href="view.html">공지사항 2 <span class="badge">1+1</span></a>
                                </td>
                                <td class="rb-user">
                                    <a class="btn btn-link" tabindex="0" role="button" data-profile="popover">관리자</a>
                                </td>
                                <td class="rb-hit">7</td>
                                <td class="rb-time">2022-01-19</td>
                            </tr>
                            <tr>
                                <th class="rb-num" scope="row">3</th>
                                <td class="rb-title rb-reply-01">
                                    <span><i class="fa fa-level-up fa-rotate-90"></i></span>
                                    <span class="rb-category">분류1</span>
                                    <a href="view.html">RE:공지사항 2에 대한 답글 <span class="badge">1+1</span></a>
                                </td>
                                <td class="rb-user">
                                    <a class="btn btn-link" tabindex="0" role="button" data-profile="popover">관리자</a>
                                </td>
                                <td class="rb-hit">7</td>
                                <td class="rb-time">2022-01-19</td>
                            </tr>
                            <tr>
                                <th class="rb-num" scope="row">2</th>
                                <td class="rb-title rb-reply-02">
                                    <span><i class="fa fa-level-up fa-rotate-90"></i></span>
                                    <span class="rb-category">분류1</span>
                                    <a href="view.html">RE:RE:공지사항 2에대한 답글 <span class="badge">1+1</span></a>
                                </td>
                                <td class="rb-user">
                                    <a class="btn btn-link" tabindex="0" role="button" data-profile="popover">관리자</a>
                                </td>
                                <td class="rb-hit">7</td>
                                <td class="rb-time">2022-01-19</td>
                            </tr>
                            <tr>
                                <th class="rb-num" scope="row">1</th>
                                <td class="rb-title">
                                    <a href="view.html">공지사항 3</a>
                                </td>
                                <td class="rb-user">
                                    <a class="btn btn-link" tabindex="0" role="button" data-profile="popover">관리자</a>
                                </td>
                                <td class="rb-hit">100</td>
                                <td class="rb-time">2022-01-19</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <div class="rb-bbs-footer">
  
                    <div class="rb-actions row">
                        <div class="col-xs-12 col-sm-6 col-sm-offset-3">
                            <nav class="rb-pagination">
                                <ul class="pagination pagination-sm pagination-alt">
                                    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-xs-12 col-sm-3">
                            <div class="rb-buttons">
                                <a href="./write.html" class="btn btn-default btn-sm">글쓰기</a>
                            </div>
                        </div>
                    </div>
  
                  
                </div>
            </section>
        </div>
    </div>

  <!-- 강혜수 게시판 Body 끝 -->






</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/script.js"></script>
</html>