<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>




  <!-- 관리자페이지 폰트 추가 -->
    <!-- 영어는 ROBOTO -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap" rel="stylesheet">
       <!-- 한글은 노토산스 코리아 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap" rel="stylesheet">


<!--  관리자페이지 폰트추가 끝 -->
<!-- 메인 css 추가 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminMainPage/adminBoardPage/adminBoardPage.css">
<!-- 메인 css 끝 -->
<!-- fontawesome LINK 추가 -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- fontawesome 끝 -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<!-- select box option 배경과 같은 흰색이라서 검은색으로 바꿈 -->
<style type="text/css">
#selBoard option{
color:black;
}
</style>
        <!-- 제이쿼리, 자바스크립트 시작입니다 -->
     <!-- Including Jquery -->
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/jquery-3.3.1.min.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/jquery.cookie.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/modernizr-3.6.0.min.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/wow.min.js"></script>
     <!-- Including Javascript -->
   <%--   <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/bootstrap.min.js"></script> --%>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/plugins.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/popper.min.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/lazysizes.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/main.js"></script>
     <!-- Photoswipe Gallery -->
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/photoswipe.min.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/photoswipe-ui-default.min.js"></script>
     <!-- 제이쿼리, 자바스크립트 종료입니다 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

<script type="text/javascript">

//게시판 유형 선택하면 ajax
function searchbrd(boardNum){
	
	if(boardNum != ''){
		
	   var params = {
			selBoard : boardNum
	   }
		
		$.ajax({
			url:"${pageContext.request.contextPath}/admin/board/noticeBoard",
			type: "POST",
			data: JSON.stringify(params),
			contentType : "application/json; charset=utf-8",
	       	dataType: 'html',
			success: function(data){
				$('.item1').html(data);
				$(".item1").show();
			}
		});
	  
	//게시판 선택 하지 않을 때 경고창 띄우기
	}else{
		alert('게시판을 선택해주세요');
	}

}

	

function deleteNotice(noticeNum, boardNum) {
	// alert(noticeNum + "/" + boardNum);
	
 	// 삭제 ajax 
 	var params = {
		noticeNum : noticeNum
	};
 	
 	$.ajax({
 		url: "${pageContext.request.contextPath}/admin/board/deleteNotice",
		type: "POST",
		data: JSON.stringify(params),
		contentType : "application/json; charset=utf-8",
		dataType : "json",
		success: function(result) {
			if (result.resultCode == '0000') { // call list
				var params = {
					selBoard : boardNum
				}
					
				$.ajax({
					url:"${pageContext.request.contextPath}/admin/board/noticeBoard",
					type: "POST",
					data: JSON.stringify(params),
					contentType : "application/json; charset=utf-8",
			       	dataType: 'html',
					success: function(data){
						$('.item1').html(data);
						$(".item1").show();
						alert("삭제가 완료되었습니다.");
					}
				});
			} else if(result.resultCode == '9999') {
				alert("삭제가 되지 않았습니다.");
				
				return false;
			};
		}
 	});
	
}

function deleteQna(qnaNum, boardNum) {
	// alert(noticeNum + "/" + boardNum);
	
 	// 삭제 ajax 
 	var params = {
 		qnaNum : qnaNum
	};
 	
 	$.ajax({
 		url: "${pageContext.request.contextPath}/admin/board/deleteQna",
		type: "POST",
		data: JSON.stringify(params),
		contentType : "application/json; charset=utf-8",
		dataType : "json",
		success: function(result) {
			if (result.resultCode == '0000') { // call list
				var params = {
					selBoard : boardNum
				}
					
				$.ajax({
					url:"${pageContext.request.contextPath}/admin/board/noticeBoard",
					type: "POST",
					data: JSON.stringify(params),
					contentType : "application/json; charset=utf-8",
			       	dataType: 'html',
					success: function(data){
						$('.item1').html(data);
						$(".item1").show();
						alert("삭제가 완료되었습니다.");
					}
				});
			} else if(result.resultCode == '9999') {
				alert("삭제가 되지 않았습니다.");
				
				return false;
			};
		}
 	});
	
}

// 페이지 기동 후 실행
$(function() {
	
});

</script>
</head>
<body>
   <!-- 임승혁 관리자페이지 메인시작 -->
          <div class="hideMenu">
            <ul class="adminMenus">
                <li><a onclick="exitSideBar()" class="exitHideMenu"href="#">&times;</a></li>
                <!-- <li id="switchingTheme"><i class="fas fa-exchange-alt"></i>테마 변경</a></li>-->
               
                   
                  <li><div class="userCon"><i class="xi-profile"></i><span class="username">임승혁 님</span></div><span class="logoutBtnM">로그아웃</span></li>
                  
              </ul> 

          </div>

          <div class="searchBox">
            
            <div class="searchCon">
                <span class="searchBtn"><i class="xi-search"></i></span><input type="text" name="" id=""><span class="xbtn">&times;</span></div>
                
          </div>
  
          <div class="mainCon">
            <nav>
            <div class="top">
                <div class="topCon">
                    <span class="hambugerBtn" onclick="viewSideBar()"><i class="xi-bars"></i> </span>
                     <h3 class="panel">관리자 페이지</h3>
                     <div class="rightCon"> <div class="userForm"><span class="userId">관리자 님</span><span class="logoutBtn">로그아웃</span></div><span class="search"><i class="xi-search"></i></span></div></div>
                    
                    </div>
            <div class="bottom">
                <ul class="navmenus">
                    <li><a href="${pageContext.request.contextPath}/admin/main">홈</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/mail">메일</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/user">회원</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/board">게시판</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/order">주문</a></li>
                    <li><a href="#">상품</a></li>
                    <li><a href="${pageContext.request.contextPath}/"><i class="xi-home"></i></a></li>
                   
                </ul>
            </div>
            </nav> 
            <!-- <aside><input type="text" name="name" id="name" placeholder="이름을 검색해주세요"></aside> -->
            <div class="selCon">
                <select name="" id="selBoard">
                    <option value="" selected>게시판을 선택해주세요.</option>
                    <option value="1">공지사항 게시판</option>
                    <option value="2">Q&A 게시판</option>
                </select>
                <button id="submitBoard" onclick="searchbrd($('#selBoard').val());">검색</button>
                <!-- <button id="submitBoard" >검색</button> -->
            </div>
            <div class="resultTitle">
                
                <h3>검색결과</h3>
            </div>   
            <div class="userTable item1"></div>


                   <div class="pagingBtnCon">


                     <div class="btns">

                      <span class="highDown"><i class="xi-angle-left-min"></i><i class="xi-angle-left-min"></i></span> <i class="xi-angle-left-min"></i>

                       
                      <ul class="indexNum">
                          <li><a href="#">1</a></li>
                          <li><a href="#">2</a></li>
                          <li><a href="#">3</a></li>
                          <li><a href="#">4</a></li>
                          <li><a href="#">5</a></li>
                      </ul>

                       <i class="xi-angle-right-min"></i> <span class="highUp"><i class="xi-angle-right-min"></i><i class="xi-angle-right-min"></i></span>
                     
                    </div>

                
               
                





            </div>
               
           
              
          








            
         </div>
         
<script src="${pageContext.request.contextPath}/assets/js/adminMainPage/adminBoardPage/adminBoardPage.js"></script>


<script>


</script>

</body>
</html>