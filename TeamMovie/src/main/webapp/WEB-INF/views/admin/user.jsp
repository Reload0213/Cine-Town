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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminMainPage/adminUserPage/adminUserPage.css">
<!-- 메인 css 끝 -->
<!-- fontawesome LINK 추가 -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- fontawesome 끝 -->
</head>
<body>
    
    <!-- 임승혁 관리자페이지 메인시작 -->
          <div class="hideMenu">
            <ul class="adminMenus">
                <li class="hoverNot"><a onclick="exitSideBar()" class="exitHideMenu"href="#">&times;</a></li>
                <!-- <li id="switchingTheme"><i class="fas fa-exchange-alt"></i>테마 변경</a></li>-->
                <li><a href="#"><i class="xi-profile"></i> 4443919님 </a></li>
                   <li id="switchingTheme"><a href="#">테마 변경</a></li>
                  <li><a href="#">관리자 메일함</a></li>
                  <li><a href="#">회원 정보 관리</a></li>
                  <li><a href="#">회원 주문 조회</a></li>
                  <li><a href="#"> 리뷰게시판 수정/삭제</a></li>
                  <li><a href="#">FAQ게시판 생성/수정</a></li>

                  <li><a href="#">상품 등록</a></li>
                  <li><a href="#"> 상품 수정</a></li>
                  <li><a href="#"> 상품 삭제</a></li>
                  <li><a href="#"> 로그아웃</a></li>
              </ul> 

          </div>

          <div class="searchBox">
            
            <div class="searchCon">
                <span class="searchBtn"><i class="xi-search"></i></span><input type="text" name="" id=""><span class="xbtn">&times;</span></div>
                    
          </div>
  
          <div class="mainCon">
            <nav>
            <span class="hambugerBtn" onclick="viewSideBar()"><i class="xi-bars"></i> </span>
                <h3 class="panel">관리자 페이지</h3>
            <span class="search"><i class="xi-search"></i></span>
            </nav> 
            <!-- <aside><input type="text" name="name" id="name" placeholder="이름을 검색해주세요"></aside> -->
            <div class="resultTitle">
                <span>검색결과</span>
            </div>   
            <div class="userTable">
             
              <table>
                  <colgroup>
                  <col style="width:10%">
                  <col style="width:15%">
                  <col style="width:20%">
                  <col style="width:20%">
                  <col style="width:30%">
                </colgroup>
                  <thead>
                      <tr>
                      <th>번호</th>
                      <th>아이디</th>
                      <th>비밀번호</th>
                      <th>휴대폰번호</th>
                      <th>이메일</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                        <td>1</td>
                        <td>shim1030</td>
                        <td>123456789</td>
                        <td>01034891328</td>
                        <td>kikaio77@naver.com</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                    </tr>

                    <tr>
                        <td>7</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                    </tr>

                    <tr>
                        <td>8</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                    </tr>

                    <tr>
                        <td>9</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                    </tr>

                    <tr>
                        <td>10</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
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



</body>
</html>