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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminMainPage/adminMainPage.css">
<!-- 메인 css 끝 -->
<!-- fontawesome LINK 추가 -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- fontawesome 끝 -->
</head>
<body>
	 <!-- 임승혁 관리자페이지 메인시작 -->
         <div class="mainCon">
             <span class="mainHomeBtn"><a href="#"><i class="xi-home-o"></i></a></i></span>
            <nav><div><h3>관리자 페이지</h3><span>SessionScope.admin.name님</span></div></nav>
              <ul class="adminMenus">
                <!-- <li id="switchingTheme"><i class="fas fa-exchange-alt"></i>테마 변경</a></li>-->
                   <li id="switchingTheme"><a href="#"><i class="xi-exchange"></i>테마 변경</a></li>
                  <li><a href="#"><i class="xi-mail-o"></i> 관리자 메일함</a></li>
                  <li><a href="#"><i class="xi-user-address"></i> 회원 정보 관리</a></li>
                  <li><a href="#"><i class="xi-box"></i> 회원 주문 조회</a></li>
                  <li><a href="#"><i class="xi-document"></i> 리뷰게시판 수정/삭제</a></li>
                  <li><a href="#"><i class="xi-calendar-list"></i>FAQ게시판 생성/수정</a></li>
                  <li><a href="#"><i class="xi-market"></i> 상품 등록</a></li>
                  <li><a href="#"><i class="xi-eraser"></i> 상품 수정</a></li>
                  <li><a href="#"><i class="xi-trash"></i> 상품 삭제</a></li>
                  <li><a href="#"><i class="xi-log-out"></i> 로그아웃</a></li>
                  
              </ul> 
          








            
         </div>
         
<script src="assets/js/adminMainPage/adminMainPage.js"></script>
	
	
	
</body>
</html>