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
                    <li><a href="#">홈</a></li>
                    <li><a href="#">메일</a></li>
                    <li><a href="#">회원</a></li>
                    <li><a href="#">게시판</a></li>
                    <li><a href="#">주문</a></li>
                    <li><a href="#">상품</a></li>
                   
                </ul>
            </div>
            </nav> 
            <!-- <aside><input type="text" name="name" id="name" placeholder="이름을 검색해주세요"></aside> -->
            <div class="resultTitle">
                <h3>메일함</h3>
            </div>   
            <div class="userTable">
               
               
                <table>
                    
                    <thead>
                        <tr>
                        <th>보낸날짜</th>
                        <th>번호</th>
                        <th>보낸사람</th>
                        <th>내용</th>
                        <th>삭제</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                          <td>2022-01-20 09:38</td>
                          <td>1</td>
                          <td>귀신잡는해병대</td>
                          <td>부서진걸 보내오고있어 뒤질래?</td>
                          <td><button>삭제하기</button></td>
                          
                      </tr>
                      <tr>
                        <td>2022-01-20 09:38</td>
                        <td>1</td>
                        <td>귀신잡는해병대</td>
                        <td>부서진걸 보내오고있어 뒤질래?</td>
                        <td><button>삭제하기</button></td>
                        
                      </tr>
                      <tr>
                        <td>2022-01-20 09:38</td>
                        <td>1</td>
                        <td>귀신잡는해병대</td>
                        <td>부서진걸 보내오고있어 뒤질래?</td>
                        <td><button>삭제하기</button></td>
                        
                         
                      </tr>
                      <tr>
                        <td>2022-01-20 09:38</td>
                        <td>1</td>
                        <td>귀신잡는해병대</td>
                        <td>부서진걸 보내오고있어 뒤질래?</td>
                        <td><button>삭제하기</button></td>
                        
                         
                      <tr>
                        <td>2022-01-20 09:38</td>
                        <td>1</td>
                        <td>귀신잡는해병대</td>
                        <td>부서진걸 보내오고있어 뒤질래?</td>
                        <td><button>삭제하기</button></td>
                        
                         
                      </tr>
                      <tr>  <td>2022-01-20 09:38</td>
                        <td>1</td>
                        <td>귀신잡는해병대</td>
                        <td>부서진걸 보내오고있어 뒤질래?</td>
                        <td><button>삭제하기</button></td>
                        
                         
                      </tr>
  
                      <tr>
                        <td>2022-01-20 09:38</td>
                        <td>1</td>
                        <td>귀신잡는해병대</td>
                        <td>부서진걸 보내오고있어 뒤질래?</td>
                        <td><button>삭제하기</button></td>
                        
                         
                      </tr>
  
                      <tr>
                        <td>2022-01-20 09:38</td>
                        <td>1</td>
                        <td>귀신잡는해병대</td>
                        <td>부서진걸 보내오고있어 뒤질래?</td>
                        <td><button>삭제하기</button></td>
                        
                         
                      </tr>
  
                      <tr>
                        <td>2022-01-20 09:38</td>
                        <td>1</td>
                        <td>귀신잡는해병대</td>
                        <td>부서진걸 보내오고있어 뒤질래?</td>
                        <td><button>삭제하기</button></td>
                        
                         
                      </tr>
  
                      <tr>
                        <td>2022-01-20 09:38</td>
                        <td>1</td>
                        <td>귀신잡는해병대</td>
                        <td>부서진걸 보내오고있어 뒤질래?</td>
                        <td><button>삭제하기</button></td>
                        
                         
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