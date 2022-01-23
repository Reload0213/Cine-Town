<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
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
        
<!-- 강혜수 게시판 CSS 시작 -->

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Font-Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">



<!-- BBS-style -->
<link rel="stylesheet" href="style.css">


<!-- 강혜수 게시판 CSS 끝 -->
<title>Insert title here</title>
</head>
<body>
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
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">How do I become an author?</a>
                            </h4>
                        </div>
                        <div id="collapseOne" style="overflow: hidden;"role="tabpanel" aria-labelledby="headingOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                            <div class="panel-body">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingTwo" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" class="">Helpful Resources for Authors &amp; for marketers</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingTwo" class="panel-collapse collapse in" aria-expanded="true">
                            <div class="panel-body">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingThree"  role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed">How much money can I make?</a>
                            </h4>
                        </div>
                        <div id="collapseThree" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingThree" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingFour" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour" class="collapsed">Can I offer my items for free on a promotional basis?</a>
                            </h4>
                        </div>
                        <div id="collapseFour" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingFour" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingFive" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive" class="collapsed">Can I offer my items for free on a promotional basis?</a>
                            </h4>
                        </div>
                        <div id="collapseFive" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingFive" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingSix" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix" class="collapsed">Can I offer my items for free on a promotional basis?</a>
                            </h4>
                        </div>
                        <div id="collapseSix" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingSix" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingSeven" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven" class="collapsed">Can I offer my items for free on a promotional basis?</a>
                            </h4>
                        </div>
                        <div id="collapseSeven" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingSeven" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div id="headingEight" role="tab" class="panel-heading">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight" class="collapsed">Can I offer my items for free on a promotional basis?</a>
                            </h4>
                        </div>
                        <div id="collapseEight" style="overflow: hidden;" role="tabpanel" aria-labelledby="headingEight" class="panel-collapse collapse" aria-expanded="false">
                            <div class="panel-body">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
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
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq/faq_js/script.js"></script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>