<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                <h3>주문내역</h3>
            </div>   
            <div class="userTable">
               
               
               <table>
                    <!-- <colgroup>
                    <col style="width:20%">
                    <col style="width:10%">
                    <col style="width:10%">
                    <col style="width:10%">
                    <col style="width:10%">
                    <col style="width:40%">
                  
                    
                  </colgroup> -->
                    <thead>
                        <tr>
                        <th>주문번호</th>
                        <th>주문상태</th>
                        <th>주문자</th>
                        <th>아이디</th>
                        <th>총금액</th>
                         <th>비고</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                          <td>20220120-189</td>
                          <td>결제대기중</td>
                          <td>강경원</td>
                          <td>kyungwon12</td>
                          <td>120,000원</td>
                          <td>우체국 11234-33415 </td>
                      </tr>
                      <tr>
                          <td>20220120-188</td>
                          <td>배송완료</td>
                          <td>황철순</td>
                          <td>chulsun33</td>
                          <td>123,000원</td>
                          <td>우체국 11234-33415 </td>
                      </tr>
                      <tr>
                          <td>20220120-189</td>
                          <td>결제대기중</td>
                          <td>강경원</td>
                          <td>kyungwon12</td>
                          <td>120,000원</td>
                          <td>우체국 11234-33415 </td>
                      </tr>
                      <tr>
                          <td>20220120-189</td>
                          <td>결제대기중</td>
                          <td>강경원</td>
                          <td>kyungwon12</td>
                          <td>120,000원</td>
                          <td>우체국 11234-33415 </td>
                      </tr>
                      
                      <tr>
                          <td>20220120-189</td>
                          <td>결제대기중</td>
                          <td>강경원</td>
                          <td>kyungwon12</td>
                          <td>120,000원</td>
                          <td>우체국 11234-33415 </td>
                      </tr>
  
                      <tr>
                          <td>20220120-189</td>
                          <td>결제대기중</td>
                          <td>강경원</td>
                          <td>kyungwon12</td>
                          <td>120,000원</td>
                          <td>우체국 11234-33415 </td>
                      </tr>
  
                      <tr>
                          <td>20220120-189</td>
                          <td>결제대기중</td>
                          <td>강경원</td>
                          <td>kyungwon12</td>
                          <td>120,000원</td>
                          <td>우체국 11234-33415 </td>
                      </tr>
  
                      <tr>
                          <td>20220120-189</td>
                          <td>결제대기중</td>
                          <td>강경원</td>
                          <td>kyungwon12</td>
                          <td>120,000원</td>
                          <td>우체국 11234-33415 </td>
                      </tr>
  
                      <tr>
                          <td>20220120-189</td>
                          <td>결제대기중</td>
                          <td>강경원</td>
                          <td>kyungwon12</td>
                          <td>120,000원</td>
                          <td>우체국 11234-33415 </td>
                      </tr>
                      
                      
  
                     
  
                     
  
                    
  
                     
  
  
  
  
                    </tbody>
                </table>
  
  


             </div>

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