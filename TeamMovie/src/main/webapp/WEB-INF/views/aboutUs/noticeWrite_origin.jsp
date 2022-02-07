<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<!-- Bootstrap-select -->
<link rel="stylesheet"
	href="../../assets/plugins/bootstrap-select-1.7.4/css/bootstrap-select.min.css">

<!-- Bootstrap-fileinput -->
<link rel="stylesheet"
	href="../../assets/plugins/bootstrap-fileinput-4.2.7/css/fileinput.css">

<!-- system-style -->
<link rel="stylesheet" href="../../assets/css/sys.css">

<!-- Common-style -->
<link rel="stylesheet" href="../../assets/css/classic.css">

<!-- BBS-style -->
<link rel="stylesheet" href="style.css">
<%@ include file="/WEB-INF/views/include/header.jsp"%>

</head>

<main>
	<h1 style="text-align: center; margin: 50px;">공지사항 작성페이지</h1>
	<br />

	<div class="container">

		<div class="row">
			<div class="col-lg-9 col-lg-offset-1">

				<!-- 템플릿 시작 -->
				<section class="rb-bbs rb-bbs-write">
					<form:form class="form-horizontal" enctype="multipart/form-data"
						modelAttribute="noticeVO"
						action="${pageContext.request.contextPath}/aboutUs/writeNotice"
						method="GET">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">제목</label>
							<div class="col-sm-10">
								<form:input path="noticeTitle" type="text" class="form-control"
									id="" placeholder="제목을 입력하세요." />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<label class="checkbox-inline"> <input type="checkbox"
									id="" value="option1"> 공지글
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="" value="option2"> 비밀글
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="sr-only">내용</label>
							<div class="col-sm-12">

								<div class="panel panel-default rb-editor">
									<div class="panel-heading hidden-xs rb-editor-toolbar">
										<div class="btn-group">
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Bold">
												<i class="fa fa-bold"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Italic">
												<i class="fa fa-italic"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Underline">
												<i class="fa fa-underline"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Strikethrough">
												<i class="fa fa-strikethrough"></i>
											</button>
										</div>
										<div class="btn-group">
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Cut">
												<i class="fa fa-scissors"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Copy">
												<i class="fa fa-copy"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Past">
												<i class="fa fa-paste"></i>
											</button>
										</div>
										<div class="btn-group">
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Undo">
												<i class="fa fa-reply"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Redo">
												<i class="fa fa-share"></i>
											</button>
										</div>
										<div class="btn-group">
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Align left">
												<i class="fa fa-align-left"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Align center">
												<i class="fa fa-align-center"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Align right">
												<i class="fa fa-align-right"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Align justify">
												<i class="fa fa-align-justify"></i>
											</button>
										</div>
										<div class="btn-group">
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Numbered list">
												<i class="fa fa-list-ol"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Bulleted list">
												<i class="fa fa-list-ul"></i>
											</button>
										</div>
										<div class="btn-group">
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Link">
												<i class="fa fa-link"></i>
											</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" title="Unlink">
												<i class="fa fa-unlink"></i>
											</button>
										</div>
									</div>
									<div class="rb-editor-body">
										<form:textarea path="noticeComment" class="form-control"
											rows="15"></form:textarea>
									</div>

									<div class="panel-body rb-fileinput">
										<a href="" class="btn btn-default btn-sm" data-toggle="modal"
											data-target="#modal-insertPhoto"><i
											class="fa fa-camera-retro fa-lg fa-fw"></i> 사진삽입</a> <a href=""
											class="btn btn-default btn-sm" data-toggle="modal"
											data-target="#modal-attachFile"><i
											class="fa fa-floppy-o fa-lg fa-fw"></i> 파일첨부</a>
									</div>
								</div>

								<div class="rb-attach">
									<ul class="list-group rb-attach-photo">
										<li class="list-group-item"><span class="pull-right">
												<div class="btn-group btn-group-xs">
													<a href="" class="btn btn-default" title="삭제"
														data-toggle="tooltip"><i class="fa fa-times"></i></a>
													<button type="button"
														class="btn btn-default dropdown-toggle"
														data-toggle="dropdown">
														<span class="caret"></span> <span class="sr-only">Toggle
															Dropdown</span>
													</button>
													<ul class="dropdown-menu dropdown-menu-right" role="menu">
														<li><a href="#">대표이미지 설정</a></li>
														<li><a href="#" data-toggle="modal"
															data-target="#modal-attach-photo-meta" data-filename="국화"
															data-filetype="jpg" data-caption="국화 사진 캡션 입니다.">정보수정</a></li>
														<li><a href="#">숨김</a></li>
														<li><a href="#">삭제</a></li>
														<li class="divider"></li>
														<li role="presentation" class="dropdown-header">순서조정</li>
														<li><a href="#"><i class="fa fa-caret-up fa-lg"></i>
																위로</a></li>
														<li><a href="#"><i class="fa fa-caret-down fa-lg"></i>
																아래로</a></li>
													</ul>
												</div>
										</span>
											<div class="media">
												<a class="pull-left" href="#"> <img class="media-object"
													src="http://placehold.it/48x48/" alt="">
												</a>
												<div class="media-body">
													<span class="label label-default">대표</span> <a href="">국화.jpg</a>
													<span class="rb-size">446.1KB</span>
												</div>
											</div></li>
										<li class="list-group-item"><span class="pull-right">
												<div class="btn-group btn-group-xs">
													<a href="" class="btn btn-default" title="삭제"
														data-toggle="tooltip"><i class="fa fa-times"></i></a>
													<button type="button"
														class="btn btn-default dropdown-toggle"
														data-toggle="dropdown">
														<span class="caret"></span> <span class="sr-only">Toggle
															Dropdown</span>
													</button>
													<ul class="dropdown-menu dropdown-menu-right" role="menu">
														<li><a href="#">대표이미지 설정</a></li>
														<li><a href="#" data-toggle="modal"
															data-target="#modal-attach-photo-meta" data-filename="사막"
															data-filetype="gif" data-caption="사막사진 캡션 입니다.">정보수정</a></li>
														<li><a href="#">숨김</a></li>
														<li><a href="#">삭제</a></li>
														<li class="divider"></li>
														<li role="presentation" class="dropdown-header">순서조정</li>
														<li><a href="#"><i class="fa fa-caret-up fa-lg"></i>
																위로</a></li>
														<li><a href="#"><i class="fa fa-caret-down fa-lg"></i>
																아래로</a></li>
													</ul>
												</div>
										</span>
											<div class="media">
												<a class="pull-left" href="#"> <img class="media-object"
													src="http://placehold.it/48x48/" alt="">
												</a>
												<div class="media-body">
													<a href="">사막.jpg</a> <span class="rb-size">446.1KB</span>
												</div>
											</div></li>
									</ul>

								</div>
							</div>
						</div>
			</div>
			<hr>

			<hr>
			<div class="form-group">
				<div>
					<button type="button" class="btn btn-default">취소</button>
					<button type="submit" class="btn btn-primary">등록등록</button>
				</div>
			</div>

			</form:form>

			</section>
			<!-- 템플릿 끝 -->

		</div>
	</div>



	</div>

	<!-- Modal-fileinput -->
	<div class="modal fade" id="modal-insertPhoto" tabindex="-1"
		role="dialog" aria-labelledby="fileinput">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="fileinput">
						<i class="fa fa-picture-o"></i> 사진삽입
					</h4>
				</div>
				<div class="modal-body">

					<div class="tabbable-panel">
						<div class="tabbable-line">
							<ul class="nav nav-tabs ">
								<li class="active"><a href="#tab_default_1"
									data-toggle="tab"> 업로드 </a></li>
								<li><a href="#tab_default_2" data-toggle="tab"> 사진</a></li>
								<li><a href="#tab_default_3" data-toggle="tab"> 앨범</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tab_default_1">
									<span class="label label-default">용량 : 0B / 10MB</span> <span
										class="label label-default">개수 : 0개 / 20개 </span> <input
										id="bbs-insertPhoto" type="file" multiple class="file-loading"
										data-overwrite-initial="false" accept="image/*">
								</div>
								<div class="tab-pane" id="tab_default_2">
									<p>준비중 입니다.</p>
								</div>
								<div class="tab-pane" id="tab_default_3">
									<p>준비중 입니다.</p>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>

	<!-- 파일첨부 -->
	<div class="modal fade" id="modal-attachFile" tabindex="-1"
		role="dialog" aria-labelledby="fileinput">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="fileinput">
						<i class="fa fa-paperclip fa-fw"></i> 파일첨부
					</h4>
				</div>
				<div class="modal-body">
					<span class="label label-default">용량 : 0B / 10MB</span> <span
						class="label label-default">개수 : 0개 / 20개 </span> <input
						id="bbs-attachFile" type="file" multiple class="file-loading"
						data-overwrite-initial="false">
				</div>
			</div>
		</div>
	</div>

	<!-- 첨부 사진 메타정보 수정 -->
	<div class="modal fade rb-modal-attach-meta"
		id="modal-attach-photo-meta" tabindex="-1" role="dialog"
		aria-labelledby="">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="">
						<i class="fa fa-picture-o"></i> 사진 정보수정
					</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<p>
								<img class="img-thumbnail" src="http://placehold.it/180x180/"
									alt="">
							</p>
						</div>
						<div class="col-md-8">
							<form>
								<div class="form-group">
									<label for="file-name" class="control-label">파일명:</label>
									<div class="input-group">
										<input type="text" class="form-control" id="file-name">
										<span class="input-group-addon"></span>
									</div>
								</div>
								<div class="form-group">
									<label for="file-caption" class="control-label">캡셥:</label>
									<textarea class="form-control" id="file-caption"></textarea>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소하기</button>
					<button type="button" class="btn btn-primary">저장하기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 첨부 파일 메타정보 수정 -->
	<div class="modal fade rb-modal-attach-meta"
		id="modal-attach-file-meta" tabindex="-1" role="dialog"
		aria-labelledby="">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="">
						<i class="fa fa-paperclip"></i> 첨부파일 정보수정
					</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<h1 class="text-center">
								<i class="fa fa-floppy-o fa-4x"></i>
							</h1>
						</div>
						<div class="col-md-8">
							<form>
								<div class="form-group">
									<label for="file-name" class="control-label">파일명:</label>
									<div class="input-group">
										<input type="text" class="form-control" id="file-name">
										<span class="input-group-addon"></span>
									</div>
								</div>
								<div class="form-group">
									<label for="file-caption" class="control-label">캡셥:</label>
									<textarea class="form-control" id="file-caption"></textarea>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

</main>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Bootstrap js -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<!-- Bootstrap-selcct js -->
<script
	src="../../assets/plugins/bootstrap-select-1.7.4/js/bootstrap-select.min.js"></script>

<!-- Bootstrap-fileinput js -->
<script
	src="../../assets/plugins/bootstrap-fileinput-4.2.7/js/fileinput.min.js"></script>

<!-- canvas-to-blob.min.js is only needed if you wish to resize images before upload.
             This must be loaded before fileinput.min.js -->
<script
	src="../../assets/plugins/bootstrap-fileinput-4.2.7/js/plugins/canvas-to-blob.min.js"></script>

<script
	src="../../assets/plugins/bootstrap-fileinput-4.2.7/js/fileinput_locale_ko.js"></script>

<!-- Common js -->
<script src="../../assets/js/common.js"></script>

<!-- bbs js -->
<script src="./script.js"></script>

<script type="text/javascript">
	// Bootstrap-selcct - http://silviomoreto.github.io/bootstrap-select/
	$('.rb-bbs .selectpicker').addClass('input-group-btn').selectpicker(
			'setStyle');

	// Bootstrap-fileinput - https://github.com/kartik-v/bootstrap-fileinput
	$("#bbs-insertPhoto").fileinput(
			{
				language : 'ko',
				uploadUrl : "http://localhost/file-upload-single/2", // server upload action
				uploadAsync : true,
				allowedFileExtensions : [ 'jpg', 'png', 'gif', 'pdf', 'pptx' ],
				overwriteInitial : false,
				maxFileSize : 100000,
				maxFileCount : 10,
				maxFilesNum : 10,
				browseClass : "btn btn-primary",
				removeClass : "btn btn-default",
				uploadClass : "btn btn-primary",
				showUpload : false,
				showCaption : false,
				browseLabel : "찾아보기..",
				removeLabel : "전체삭제",
				removeIcon : "<i class=\"glyphicon glyphicon-trash\"></i> ",
				uploadClass : "btn btn-info",
				uploadLabel : "Upload",
				uploadIcon : "<i class=\"glyphicon glyphicon-upload\"></i> ",
				allowedFileExtensions : [ "jpg", "png", "gif" ],

				layoutTemplates : {
					main1 : "{preview}\n"
							+ "<div class=\'input-group {class}\'>\n"
							+ "   <div class=\'input-group-btn\'>\n"
							+ "       {browse}\n" + "       {upload}\n"
							+ "       {remove}\n" + "   </div>\n"
							+ "   {caption}\n" + "</div>"
				},

				allowedFileTypes : [ 'image', 'video', 'flash' ],
				slugCallback : function(filename) {
					return filename.replace('(', '_').replace(']', '_');
				}
			});

	$("#bbs-attachFile").fileinput(
			{
				language : 'ko',
				uploadUrl : "http://localhost/file-upload-single/2", // server upload action
				uploadAsync : true,
				allowedFileExtensions : [ 'zip', 'png', 'gif', 'pdf', 'pptx' ],
				overwriteInitial : false,
				maxFileSize : 100000,
				maxFileCount : 10,
				maxFilesNum : 10,
				browseClass : "btn btn-primary",
				removeClass : "btn btn-default",
				uploadClass : "btn btn-primary",
				showUpload : false,
				showCaption : false,
				browseLabel : "찾아보기..",
				removeLabel : "전체삭제",
				removeIcon : "<i class=\"glyphicon glyphicon-trash\"></i> ",
				uploadClass : "btn btn-info",
				uploadLabel : "Upload",
				uploadIcon : "<i class=\"glyphicon glyphicon-upload\"></i> ",
				allowedFileExtensions : [ "jpg", "png", "gif" ],

				layoutTemplates : {
					main1 : "{preview}\n"
							+ "<div class=\'input-group {class}\'>\n"
							+ "   <div class=\'input-group-btn\'>\n"
							+ "       {browse}\n" + "       {upload}\n"
							+ "       {remove}\n" + "   </div>\n"
							+ "   {caption}\n" + "</div>"
				},

				allowedFileTypes : [ 'image', 'video', 'flash' ],
				slugCallback : function(filename) {
					return filename.replace('(', '_').replace(']', '_');
				}
			});

	// 첨부파일 메타정보 수정 http://getbootstrap.com/javascript/#modals-related-target
	$('.rb-modal-attach-meta').on('show.bs.modal', function(event) {
		var button = $(event.relatedTarget) // Button that triggered the modal
		var filename = button.data('filename') // Extract info from data-* attributes
		var filetype = button.data('filetype') // Extract info from data-* attributes
		var caption = button.data('caption') // Extract info from data-* attributes
		// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		var modal = $(this)
		modal.find('.modal-body .input-group-addon').text('.' + filetype)
		modal.find('.modal-body input').val(filename)
		modal.find('.modal-body textarea').val(caption)
	})
</script>

</html>