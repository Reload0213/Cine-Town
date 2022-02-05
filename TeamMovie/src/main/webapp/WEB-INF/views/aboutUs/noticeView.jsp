<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>



<head>
<meta charset="UTF-8">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Font-Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<%@ include file="/WEB-INF/views/include/header.jsp"%>

</head>

<main>
	<h1 style="text-align: center; margin: 1em 2em 1em 0;">게시판 상세 페이지</h1>

	<div class="container">

		<div class="row">
			<div class="col-lg-9 col-lg-offset-1"
				style="border: 1px solid #5555; padding: 0;">

				<!-- 게시판 상세 시작 -->
				<section class="rb-bbs rb-bbs-view">

					<div class="rb-bbs-heading">
						<div class="media">
							<div class="media-body"
								style="border: 1px solid #5555; padding: 2em;">
								<h4 class="media-heading" style="margin-bottom: 1em;">${notice.noticeTitle }</h4>
								<div class="rb-meta">
									<ul class="list-inline" style="text-align: right;">
										<li>ㅁㅁㅁ님</li>
										<li class="rb-divider"></li>
										<li>${notice.noticeRegdate }</li>
										<li class="rb-divider"></li>
										<li>조회 0</li>
									</ul>
								</div>

							</div>
						</div>

					</div>

					<div class="rb-bbs-body"
						style="border: 1px solid #5555; padding: 2em;">
						<p>${notice.noticeComment }</p>


					</div>
					<div class="rb-bbs-footer">



						<dl class="dl-horizontal rb-attach" style="padding: 1em 2em;">
							<dt style="text-align: left; width: 80px; height: 50px;">첨부파일</dt>
							<dd style="margin-left: 0;">
								<ul class="list-unstyled">
									<li><i class="fa fa-floppy-o fa-fw"></i> <a href="">파일첨부기능
											구현도 가능하면 좋겠습니다.hwp</a> <span class="rb-size">446.1KB</span> <span
										class="rb-down" data-toggle="tooltip" title="다운로드 수">0</span>
									</li>
									<li><i class="fa fa-floppy-o fa-fw"></i> <a href="">과연할수있을까요.pdf</a>
										<span class="rb-size">446.1KB</span> <span class="rb-down"
										data-toggle="tooltip" title="다운로드 수">0</span></li>
								</ul>
							</dd>
						</dl>

						<div class="rb-toolbar" role="toolbar">

							<div class="rb-buttons" style="text-align: center; padding: 1em;">
								<div class="btn-group btn-primary">
									<a href="${pageContext.request.contextPath}/aboutUs/aboutUsMain"
										class="btn btn-primary">목록으로</a>
								</div>
								<div class="btn-group btn-primary">
									<a href="/TeamMovie/aboutUs/noticeUpdate?noticeNum=${notice.noticeNum }" class="btn btn-secondary">수정</a>
									<a href="/TeamMovie/aboutUs/deleteNotice?noticeNum=${notice.noticeNum }" class="btn btn-danger">삭제</a>
								</div>
							</div>
						</div>

					</div>
				</section>
				<!-- 게시판 상세 끝 -->


			</div>
		</div>



	</div>

	<!-- Modal-Profile -->
	<div class="modal fade" id="modal-profile" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">홍길동</h4>
				</div>
				<div class="modal-body">...</div>
			</div>
		</div>
	</div>

	<!-- feedback messages -->
	<div class="rb-feedback rb-feedback-default rb-position-default"
		style="display: none">
		<span></span>
	</div>
</main>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Bootstrap js -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<!-- ekko-lightbox : https://github.com/ashleydw/lightbox-->
<script
	src="../../assets/plugins/ekko-lightbox-3.3.3/ekko-lightbox.min.js"></script>

<!-- Common js -->
<script src="../../assets/js/common.js"></script>

<!-- bbs js 
        <script src="./script.js"></script>-->

<!-- jquery-cookie : https://github.com/carhartl/jquery-cookie -->
<script src="../../assets/plugins/jquery-cookie-1.3.1/jquery.cookie.js"></script>

<!-- jquery-text-resizer : http://mariojvargas.com/projects/jquery-text-resizer-plugin/ -->
<script
	src="../../assets/plugins/jquery-textresizer-1.1.0/jquery.textresizer.min.js"></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$(function() {
							$(".rb-bbs-body img").each(function() {
								var a = $('<a/>').attr('href', this.src);
								$(a).addClass('lightbox');
								$(a).attr('title', this.alt);
								$(a).attr('data-toggle', "lightbox");
								$(this).addClass('img-responsive').wrap(a);
							});
						});

						$(document).delegate('*[data-toggle="lightbox"]',
								'click', function(event) {
									event.preventDefault();
									$(this).ekkoLightbox();
								});

						$(function() {

							$(".rb-resizer a").textresizer(
									{
										target : ".rb-bbs-view",
										type : "cssClass",
										sizes : [ "rb-text-small",
												"rb-text-medium",
												"rb-text-large",
												"rb-text-larger" ],
										selectedIndex : 1
									});

							$('.rb-resizer a').click(function() {
								feedback.show("글자크기가 변경되었습니다.");
								return false;
							});
						});

						// popover
						$(function() {
							$('[data-profile="popover"]')
									.popover(
											{
												placement : 'auto',
												html : 'true',
												trigger : 'click',
												container : '.rb-bbs',
												content : '<div class="media"><a class="pull-left" href="#" data-toggle="modal" data-target="#modal-profile"><img class="media-object" src="../../assets/img/noavatar-blue.png"></a><div class="media-body"><h4 class="media-heading"><a href="#" data-toggle="modal" data-target="#modal-profile">홍길동 (대한이)</a></h4><p class="text-muted"><small>가입일 : 2009.06.12 (2312일전)<br>마지막접속 : 2015.10.12 (0일전)<br>포인트 : 11,966 , 등급 : 비기너++ 10</small></p><p class="rb-relation">함께아는 친구 <strong>16명</strong></p></div></div>',
												template : '<div class="popover rb-profile" role="tooltip"><div class="arrow"></div><div class="popover-content"></div><div class="popover-footer text-right"><div class="btn-group" role="group" aria-label="..."><div class="btn-group btn-group-sm" role="group"><button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-check"></i> 친구 <span class="caret"></span></button><ul class="dropdown-menu"><li><a href="#">친구 끊기</a></li></ul></div><div class="btn-group btn-group-sm" role="group"><button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-check"></i> 팔로잉 <span class="caret"></span></button><ul class="dropdown-menu dropdown-menu-right"><li><a href="#">팔로잉 취소</a></li></ul></div><button type="button" class="btn btn-default btn-sm">메시지</button></div></div></div>'
											});

							// http://mattlockyer.com/2013/04/08/close-a-twitter-bootstrap-popover-when-clicking-outside/
							$('body')
									.on(
											'click',
											function(e) {
												$('[data-profile="popover"]')
														.each(
																function() {
																	//the 'is' for buttons that trigger popups
																	//the 'has' for icons within a button that triggers a popup
																	if (!$(this)
																			.is(
																					e.target)
																			&& $(
																					this)
																					.has(
																							e.target).length === 0
																			&& $(
																					'.popover')
																					.has(
																							e.target).length === 0) {
																		$(this)
																				.popover(
																						'hide');
																	}
																});
											});
						});

					});
</script>

</html>