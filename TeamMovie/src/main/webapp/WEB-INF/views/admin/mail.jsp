<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        
     <li>    <li><a href="${pageContext.request.contextPath}/admin/main">홈</a></li>
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
               	<c:forEach var="adminMailBoxVO" items="${list}">
                      <tr >
                          <td>${adminMailBoxVO.sendDate}</td>
                          <td>${adminMailBoxVO.mailNum}</td>
                            <td>${adminMailBoxVO.userId}</td>
                          <td ><button  type="button" onclick="openPopup('${adminMailBoxVO.mailNum}')">${adminMailBoxVO.content}</button></td>
                          <td><button class="delete" data-num="${adminMailBoxVO.mailNum}">삭제하기</button></td>
                          
                      </tr>
                      
                      </c:forEach>
                  
                      
  
                     
  
                     
  
                    
  
                     
  
  
  
  
                    </tbody>
                </table>
  


             </div>

                 
			<%
			int num = (Integer) request.getAttribute("num");

			int count = (Integer) request.getAttribute("count");

			int total = count / 10 + ((count % 10 == 0) ? 0 : 1);

			int minBlock = (((num - 1) / 10) * 10) + 1;

			int maxBlock = (((num - 1) / 10) * 1) + 10;

			pageContext.setAttribute("total", total);
			pageContext.setAttribute("minBlock", minBlock);
			pageContext.setAttribute("maxBlock", maxBlock);
			%>



		</div>

		<div class="quickViewCon">
			<div class="quickView">

				<c:choose>
					<c:when test="${(minBlock-1)<1}">
						<span>◀◀</span>
					</c:when>

					<c:otherwise>
						<a
							href="${pageContext.request.contextPath}/admin/mail?num=${minBlock-1}">◀◀</a>
					</c:otherwise>

				</c:choose>
				&nbsp;&nbsp;
				<c:choose>
					<c:when test="${num==1}">
						<span>◀</span>
					</c:when>
					<c:otherwise>
						<a
							href="${pageContext.request.contextPath}/admin/mail?num=${num-1}">◀</a>
					</c:otherwise>

				</c:choose>

				<c:forEach begin="${minBlock}"
					end="${(total<maxBlock)?total:maxBlock}" step="1" var="i">

					<c:choose>

						<c:when test="${num==i}">
							<span>${i}</span>
						</c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/admin/mail?num=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:choose>
					<c:when test="${num == total}">
						<span>▶</span>
					</c:when>

					<c:otherwise>
						<a
							href="${pageContext.request.contextPath}/admin/mail?num=${minBlock-1}">▶</a>
					</c:otherwise>

				</c:choose>
				&nbsp;&nbsp;

				<c:choose>
					<c:when test="${maxBlock>total}">
						<span>▶▶</span>
					</c:when>
					<c:otherwise>
						<a
							href="${pageContext.request.contextPath}/admin/mail?num=${maxBlock+1}">▶▶</a>
					</c:otherwise>

				</c:choose>
			</div>

                





            </div>
               
           
              
          








            
         </div>
         
<script src="${pageContext.request.contextPath}/assets/js/adminMainPage/adminUserPage/adminUserPage.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
let deleteBtn = document.querySelectorAll(".delete");



/* deleteBtn[i].addEventListener("click",function(){

}) */
$(function(){ 
	
	


for(let i=0; i<deleteBtn.length; i++){

	
	deleteBtn[i].addEventListener("click",function(){

		alert("야");	
	 	let mailNum=parseInt(this.dataset.num);
		let data={mailNum};
		let thisDelBtn= this;
		
	let yn= confirm("정말 삭제하시겠습니까?");
	
	if(yn){
		
		$.ajax({
			
			url:"${pageContext.request.contextPath}/admin/maildelete",
			data:JSON.stringify(data),
			type:"DELETE",
			contentType : "application/json; charset=utf-8",
			success:function(a){
				console.log(a);
				thisDelBtn.parentElement.parentElement.remove();
			}
			
			
			
		});
		
		
	}
		 
		
		
	});
	
	
	
}


});

function openPopup(a){

	 let width="500";
	 let height="709";
	 
	 let left=Math.ceil((window.screen.width - width)/2);
	 let top=Math.ceil((window.screen.height - height)/2);
	 
	 window.open("${pageContext.request.contextPath}/admin/mail/detail?mailNum="+a,"메일 상세보기",
		"width="+width+", height="	+height+", left="+left+", top="+top);
			 
	
};


</script>




</body>
</html>