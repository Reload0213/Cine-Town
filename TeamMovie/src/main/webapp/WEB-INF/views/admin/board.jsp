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
                    <option value="1">공지사항 게시판</option>
                    <option value="2">리뷰 게시판</option>
                </select>
                <button id="submitBoard">검색</button>
            </div>
            <div class="resultTitle">
                
                <h3>검색결과</h3>
            </div>   
           <div class="userTable item1"> 
            
               
            <%--   <table >
              
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

			<div class="container">
             <button style="background-color:red; font-size:50px; float:right;" type="button" onclick="location.href='${pageContext.request.contextPath}/aboutUs/noticeWrite'">글쓰기</button>
			</div>
      
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
                </table> --%>
  
  
               
  
          
  
              </div>


         

          








            
         </div>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="assets/js/adminMainPage/adminUserPage/adminUserPage.js"></script>       
<%-- <script src="${pageContext.request.contextPath}/assets/js/adminMainPage/adminBoardPage/adminBoardPage.js"></script> --%>


<script>
let selBoard = document.querySelector("#selBoard");
let submitBoard = document.querySelector("#submitBoard");

submitBoard.addEventListener("click",function(){
if(selBoard.value==1){
	
	location.href="${pageContext.request.contextPath}/admin/board/notice";
	
			
		
	}
else if(seleBoard.value==2){
	
	location.href="${pageContext.request.contextPath}/admin/board/qna";
}
	
	
});


/* let selBoard = document.querySelector("#selBoard");
let submitBoard = document.querySelector("#submitBoard");

$(function(){
	


submitBoard.addEventListener("click",function(){
	


if(selBoard.value==1){
	
	$.ajax({
		   
		   url:"${pageContext.request.contextPath}/admin/boardLoad",
    	   type:"POST",
    	   contentType:"application/json; charset=utf-8",
    	   success:function(item){
    		   
    		   
    	/* 	   let div = document.createElement("div");
    		   div.classList.add("userTable");
    		   
    		   
    		   let table = document.createElement("table");
    		   let thead= document.createElement("thead");
    		   let tr= document.createElement("tr");
    		   
    		   
    		   let th1= document.createElement("th");
    		   th1.innerHTML="번호";
    		   let th2= document.createElement("th");
    		   th2.innerHTML="카테고리";
    		   let th3= document.createElement("th");
    		   th3.innerHTML="제목";
    		   let th4= document.createElement("th");
    		   th4.innerHTML="내용";
    		   let th5= document.createElement("th");
    		   th1.innerHTML="일자";
    		   
    		   
    		   
    		   
    		   tr.append(th1);
    		   tr.append(th2);
    		   tr.append(th3);
    		   tr.append(th4);
    		   tr.append(th5);
    		   thead.append(tr);
    		   
    		   
    		   let tbody = document.createElement("table");
    		   
    		   for(let i=0; i<item.)
    		   let tr = document.createElement("tr"); */
    		   
    		   
    	/* 	   let div = document.createElement("div");
    		   div.classList.add("userTable"); */
    		   
    		   
    /* 		   let table = document.createElement("table");
    		   let thead= document.createElement("thead");
    		   let tr= document.createElement("tr");
    		   
    		   
    		   let th1= document.createElement("th");
    		   th1.innerHTML="번호";
    		   let th2= document.createElement("th");
    		   th2.innerHTML="카테고리";
    		   let th3= document.createElement("th");
    		   th3.innerHTML="제목";
    		   let th4= document.createElement("th");
    		   th4.innerHTML="내용";
    		   let th5= document.createElement("th");
    		   th1.innerHTML="일자";
    		   
    		   
    		   
    		   
    		   tr.append(th1);
    		   tr.append(th2);
    		   tr.append(th3);
    		   tr.append(th4);
    		   tr.append(th5);
    		   thead.append(tr);
    		   
    		   
    		   
    		   let tbody = document.createElement("tbody");
    		   
    	
    		   let html="";
    		   
    		   for(key in item){
    			 
    			  html+='<tr>';
    			  html+='<td>'+item[key].noticeNum+'</td>';
    			  html+='<td>'+item[key].noticeCategory+'</td>';
    			  html+='<td>'+item[key].noticeTitle+'</td>';
    			  html+='<td>'+item[key].noticeComment+'</td>';
    			  html+='<td>'+item[key].noticeRegdate+'</td>';
    			  html+='</tr>';
    			   
    			   
    			   
    		   }
    		   tbody.append(html);
    		   table.append(thead);
    		   table.append(tbody);
    		   
    		   
    		   $(".userTable").append(table);
    		   
    	   
    		   
    		   
    	
    		   
    		   
    		   
    		   
    		   
    		   
    		  
    		   
    	   }
		
		
		
		
		
	});
	
}
else if (selBoard.value==2){
	
}



});


});  */




</script>

</body>
</html>