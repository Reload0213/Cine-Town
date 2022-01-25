<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style>


</style>
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
            <div class="resultTitle">
                <h3>검색결과</h3>
            </div>   
            <div class="userTable">
               
              <table>
              
                  <thead>
                      <tr>
                      <th>번호</th>
                      <th>아이디</th>
                      <th>비밀번호</th>
                      <th>휴대폰번호</th>
                      <th>이메일</th>
                      <th>가입일자</th>
                      <th>삭제</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="userVO" items="${list}">
                    <tr>
                     
                        <td>${userVO.userNum}</td>
                        <td>${userVO.userId}</td>
                        <td>${userVO.userPw}</td>
                        <td>${userVO.userPhone}</td>
                        <td>${userVO.userEmail}</td>
                         <td>${userVO.userRegdate}</td>
                        <td><button class="delete">삭제하기</button></td>
                     
                    </tr>
                       </c:forEach>
                   <!--  <tr>
                        <td>2</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button>삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button>삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button>삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button>삭제하기</button></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button>삭제하기</button></td>
                    </tr>

                    <tr>
                        <td>7</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button>삭제하기</button></td>
                    </tr>

                    <tr>
                        <td>8</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button>삭제하기</button></td>
                    </tr>

                    <tr>
                        <td>9</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button>삭제하기</button></td>
                    </tr>

                    <tr>
                        <td>10</td>
                        <td>ccc1234</td>
                        <td>asdfasdf</td>
                        <td>010123456789</td>
                        <td>ccc1234@naver.com</td>
                        <td><button>삭제하기</button></td>
                    </tr>
 -->
                    

                   

                   

                  

                   




                  </tbody>
              </table>


<%
int num =(Integer)request.getAttribute("num");

int count= (Integer)request.getAttribute("count");


int total = count /10+((count%10==0)?0:1);

int minBlock = (((num-1)/10)*10)+1;

int maxBlock = (((num-1)/10)*1)+10;



pageContext.setAttribute("total",total);
pageContext.setAttribute("minBlock",minBlock);
pageContext.setAttribute("maxBlock",maxBlock);
%>


          
     </div>
     
     
<%--      <div class="quickview">
     <c:choose>
 <c:when test="${(minBlock-1)<1}">
   <span>◀◀</span>
 </c:when>
 
 <c:otherwise>
    <a href="${pageContext.request.contextPath}/admin/user?num=${minBlock-1}">◀◀</a>
 </c:otherwise>
 
</c:choose>
&nbsp;&nbsp;
<c:choose>
   <c:when test="${num==1}">
       <span>◀</span>
   </c:when>
   <c:otherwise>
   <a href="${pageContext.request.contextPath}/admin/user?num=${num-1}">◀</a>
   </c:otherwise>

</c:choose>

<c:forEach begin="${minBlock}" end="${(total<maxBlock)?total:maxBlock}" step="1" var="i">

<c:choose>

 <c:when test="${num==i}">
 <span>${i}</span>
 </c:when>
 <c:otherwise>
  <a href="${pageContext.request.contextPath}/admin/user?num=${i}">${i}</a>
 </c:otherwise>
</c:choose>
</c:forEach>

 <c:choose>
 <c:when test="${num == total}">
   <span>▶</span>
 </c:when>
 
 <c:otherwise>
    <a href="${pageContext.request.contextPath}/admin/user?num=${minBlock-1}">▶</a>
 </c:otherwise>
 
</c:choose>
&nbsp;&nbsp;

<c:choose>
   <c:when test="${maxBlock>total}">
       <span>▶▶</span>
   </c:when>
   <c:otherwise>
   <a href="${pageContext.request.contextPath}/admin/user?num=${maxBlock+1}">▶▶</a>
   </c:otherwise>

</c:choose>
</div> --%>



 <div class="pagingBtnCon">
 
 
     <div class="btns">
     
     
     <c:choose>
 <c:when test="${(minBlock-1)<1}">
       <span class="highDown"><i class="xi-angle-left-min"></i><i class="xi-angle-left-min"></i></span>
 </c:when>
 
 <c:otherwise>
    <a href="${pageContext.request.contextPath}/admin/user?num=${minBlock-1}"><span class="highDown"><i class="xi-angle-left-min"></i><i class="xi-angle-left-min"></i></span></a>
 </c:otherwise>
 
</c:choose>
&nbsp;&nbsp;
<c:choose>
   <c:when test="${num==1}">
       <span><i class="xi-angle-left-min"></i></span>
   </c:when>
   <c:otherwise>
   <a href="${pageContext.request.contextPath}/admin/user?num=${num-1}">◀</a>
   </c:otherwise>

</c:choose>

 <ul class="indexNum">
<c:forEach begin="${minBlock}" end="${(total<maxBlock)?total:maxBlock}" step="1" var="i">


<c:choose>
 
 <c:when test="${num==i}">
 <li><span>${i}</span></li>
 </c:when>
 <c:otherwise>
  <li><a href="${pageContext.request.contextPath}/admin/user?num=${i}">${i}</a></li>
 </c:otherwise>
</c:choose>
</c:forEach>
   </ul>
 <c:choose>
 <c:when test="${num == total}">
   <span><i class="xi-angle-right-min"></i></span>
 </c:when>
 
 <c:otherwise>
    <a href="${pageContext.request.contextPath}/admin/user?num=${minBlock-1}"><i class="xi-angle-right-min"></i></a>
 </c:otherwise>
 
</c:choose>
&nbsp;&nbsp;

<c:choose>
   <c:when test="${maxBlock>total}">
       <span><span class="highUp"><i class="xi-angle-right-min"></i><i class="xi-angle-right-min"></i></span>
                     </span>
   </c:when>
   <c:otherwise>
   <a href="${pageContext.request.contextPath}/admin/user?num=${maxBlock+1}"><span class="highUp"><i class="xi-angle-right-min"></i><i class="xi-angle-right-min"></i></span>
                     </a>
   </c:otherwise>

</c:choose>

     </div>
           


                 

              
       



            
         </div>

<script src="${pageContext.request.contextPath}/assets/js/adminMainPage/adminUserPage/adminUserPage.js"></script>


</body>
</html>