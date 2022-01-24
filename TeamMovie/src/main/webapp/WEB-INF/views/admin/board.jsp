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
                    <option value="1">FAQ 게시판</option>
                    <option value="2">리뷰 게시판</option>
                </select>
                <button id="submitBoard">검색</button>
            </div>
            <div class="resultTitle">
                
                <h3>검색결과</h3>
            </div>   
            <div class="userTable item1">
               
              <table >
              
                  <thead>
                      <tr>
                      <th>번호</th>
                      <th>아이디</th>
                      <th>비밀번호</th>
                      <th>휴대폰번호</th>
                      <th>이메일</th>
                      <th>삭제</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                        <td>FAQ</td>
                        <td>shim1030</td>
                        <td>123456789</td>
                        <td>01034891328</td>
                        <td>kikaio77@naver.com</td>
                        <td><button class="delete">삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>FAQ</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button  class="delete">삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button  class="delete">삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button  class="delete">삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button  class="delete">삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button  class="delete">삭제하기</button></td>
                    </tr>

                    <tr>
                        <td>7</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button  class="delete">삭제하기</button></td>
                    </tr>

                    <tr>
                        <td>8</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button  class="delete">삭제하기</button></td>
                    </tr>

                    <tr>
                        <td>9</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button  class="delete">삭제하기</button></td>
                    </tr>

                    <tr>
                        <td>10</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button  class="delete">삭제하기</button></td>
                    </tr>

                    

                   

                   

                  

                   




                  </tbody>
              </table>


             

        

            </div>


            <div class="userTable item2">
               
                <table >
              
                    <thead>
                        <tr>
                        <th>번호</th>
                        <th>아이디</th>
                        <th>비밀번호</th>
                        <th>휴대폰번호</th>
                        <th>이메일</th>
                        <th>삭제</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                          <td>리뷰</td>
                          <td>shim1030</td>
                          <td>123456789</td>
                          <td>01034891328</td>
                          <td>kikaio77@naver.com</td>
                          <td><button class="delete">삭제하기</button></td>
                      </tr>
                      <tr>
                          <td>리뷰</td>
                          <td>ccc1234</td>
                          <td>asdfasdf</td>
                          <td>010123456789</td>
                          <td>ccc1234@naver.com</td>
                          <td><button  class="delete">삭제하기</button></td>
                      </tr>
                      <tr>
                          <td>3</td>
                          <td>ccc1234</td>
                          <td>asdfasdf</td>
                          <td>010123456789</td>
                          <td>ccc1234@naver.com</td>
                          <td><button  class="delete">삭제하기</button></td>
                      </tr>
                      <tr>
                          <td>4</td>
                          <td>ccc1234</td>
                          <td>asdfasdf</td>
                          <td>010123456789</td>
                          <td>ccc1234@naver.com</td>
                          <td><button  class="delete">삭제하기</button></td>
                      </tr>
                      <tr>
                          <td>5</td>
                          <td>ccc1234</td>
                          <td>asdfasdf</td>
                          <td>010123456789</td>
                          <td>ccc1234@naver.com</td>
                          <td><button  class="delete">삭제하기</button></td>
                      </tr>
                      <tr>
                          <td>6</td>
                          <td>ccc1234</td>
                          <td>asdfasdf</td>
                          <td>010123456789</td>
                          <td>ccc1234@naver.com</td>
                          <td><button  class="delete">삭제하기</button></td>
                      </tr>
  
                      <tr>
                          <td>7</td>
                          <td>ccc1234</td>
                          <td>asdfasdf</td>
                          <td>010123456789</td>
                          <td>ccc1234@naver.com</td>
                          <td><button  class="delete">삭제하기</button></td>
                      </tr>
  
                      <tr>
                          <td>8</td>
                          <td>ccc1234</td>
                          <td>asdfasdf</td>
                          <td>010123456789</td>
                          <td>ccc1234@naver.com</td>
                          <td><button  class="delete">삭제하기</button></td>
                      </tr>
  
                      <tr>
                          <td>9</td>
                          <td>ccc1234</td>
                          <td>asdfasdf</td>
                          <td>010123456789</td>
                          <td>ccc1234@naver.com</td>
                          <td><button  class="delete">삭제하기</button></td>
                      </tr>
  
                      <tr>
                          <td>10</td>
                          <td>ccc1234</td>
                          <td>asdfasdf</td>
                          <td>010123456789</td>
                          <td>ccc1234@naver.com</td>
                          <td><button  class="delete">삭제하기</button></td>
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
         
<script src="${pageContext.request.contextPath}/assets/js/adminMainPage/adminBoardPage/adminBoardPage.js"></script>


<script>




</script>

</body>
</html>