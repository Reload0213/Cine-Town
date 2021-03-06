<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
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
	  <div class="hideMenu">
            <ul class="adminMenus">
                <li><a onclick="exitSideBar()" class="exitHideMenu"href="#">&times;</a></li>
                <!-- <li id="switchingTheme"><i class="fas fa-exchange-alt"></i>테마 변경</a></li>-->
               
                   
                  <li><div class="userCon">
                      <i class="xi-profile"></i> <c:if test="${sessionScope.account.userId != null}"> <span class="username">${sessionScope.account.userId}님</span></div><span class="logoutBtnM">로그아웃</span>
                      </c:if>
                  </li>
                  
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
                     <div class="rightCon"> <div class="userForm">
                    
                     <c:if test="${sessionScope.account.userId != null}">
                      <span class="userId">${sessionScope.account.userName}님</span>
                     <span class="logoutBtn">로그아웃</span>
                     </c:if>
                    
                     
                     </div>
                  
                     <span class="search"><i class="xi-search"></i></span></div></div>
                    
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
            <div class="resultTitle">
             
                





            </div>
               
           
              
          








            
         </div>
         
<script src="${pageContext.request.contextPath}/assets/js/adminMainPage/adminUserPage/adminUserPage.js"></script>
	<script type="text/javascript">
	let logoutBtn = document.querySelector(".logoutBtn");
	let logoutBtnM = document.querySelector(".logoutBtnM");
	
	logoutBtn.addEventListener("click",function(){
		
		location.href="${pageContext.request.contextPath}/admin/logout";
		
	});
	
	
	logoutBtnM.addEventListener("click",function(){
		
		location.href="${pageContext.request.contextPath}/admin/logout";
		
	});
	
	
	
	
	
	
	
	</script>
	
</body>
</html>