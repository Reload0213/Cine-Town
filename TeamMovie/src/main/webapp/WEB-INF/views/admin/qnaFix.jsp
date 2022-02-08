<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
	rel="stylesheet">
<!-- 한글은 노토산스 코리아 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
	rel="stylesheet">
	
	
	<!-- 다음 api link 첨부-->
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!--  관리자페이지 폰트추가 끝 -->
<!-- 메인 css 추가 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminMainPage/adminUserFixPage/adminUserFixPage.css">
<!-- 메인 css 끝 -->
<!-- fontawesome LINK 추가 -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- fontawesome 끝 -->
<style>
</style>
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
            
        <div class="resultTitle">
            <h3>질문게시판 상세 수정</h3>
        </div>
        
        <div class="userInfoCon">
            <div class="topUserCon">
                <div class="table">
                <form:form modelAttribute="qnaVO" action="${pageContext.request.contextPath}/admin/updateQna" method="POST">
                    <ul class="topUl row1">
                        <li>제목</li>
                        <li><form:input path="qnaTitle" value="${qna.qnaTitle }"/></li>
                        <li>번호</li>
                        <li><form:input path="qnaNum" readonly="true" value="${qna.qnaNum }"/></li>
                    </ul>
                    
					<!-- 구분선 -->
                    <ul class="topUl row3 divisionLine">
                        <li></li>
                        <li></li>
                    </ul>
    
                    <ul class="topUl row2">
                        <li>내용</li>
                        <li><form:input path="qnaComment" value="${qna.qnaComment }"/></li>
                    </ul>

                    <!-- 구분선 -->
                    <ul class="topUl row3 divisionLine">
                        <li></li>
                        <li></li>
                    </ul>

                    <ul class="btnCon">
                        <li><button class="formsubmit" type="submit" style="border: none; background-color: #ff0000; font-size: 15px; padding: 10px 30px; margin-right: 30px">수정</button></li>
                        <li><button style="border: none; background-color: #e0e0e0; font-size: 15px; padding: 10px 30px;" type="button" onclick="javascript:history.back()">취소</button></li>
                    </ul>
                    </form:form>
                </div>
            </div>
        </div>
    </div>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/adminMainPage/adminUserPage/adminUserPage.js"></script>
    <script>
        let password =  document.querySelector(".pw");
        let password2 = document.querySelector(".pw2");
        let pwSubmit = document.querySelector(".pwSubmit");
        let regxp =RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
        let regxp2 =RegExp(/^[0-9][0-9]+$/);
        let email = document.querySelector(".email");
        let emailSubmit = document.querySelector(".emailSubmit");
        let formSubmit = document.querySelector(".formSubmit");
        let postCode = document.querySelector(".postCode");
        let addr = document.querySelector(".addr");
        let addrSubmit = document.querySelector(".addrSubmit");
        let detailAddr = document.querySelector(".detailAddr");
        let phone = document.querySelector(".phone");
        let phoneSubmit = document.querySelector(".phoneSubmit");
     
        let hidden = document.querySelector("#userNum");
       
       
   
    	let logoutBtn = document.querySelector(".logoutBtn");
    	let logoutBtnM = document.querySelector(".logoutBtnM");
    	
    	logoutBtn.addEventListener("click",function(){
    		
    		location.href="${pageContext.request.contextPath}/admin/logout";
    		
    	});
    	
    	
    	logoutBtnM.addEventListener("click",function(){
    		
    		location.href="${pageContext.request.contextPath}/admin/logout";
    		
    	});
    	
    	
    	
    	
    	
    	
   
        
        $(function(){
        	
        	formSubmit.addEventListener("click",function(e){
        		e.preventDefault();
        		
        		console.log(hidden.value);
        		if(password.value !== "" && password2.value !== ""  && email.value !== "" && phone.value !== "" && addr.value !== "" && postCode.value !== "" && detailAddr.value !== ""){
        			
        			location.href="${pageContext.request.contextPath}/admin/userFixComplete?userNum="+hidden.value+"&userPw="+password.value+"&userEmail="+email.value+"&userPhone="+phone.value+"&userAddr1="+postCode.value+"&userAddr2="+addr.value+"&userAddr3="+detailAddr.value;
        		}
        		
        	});
        	
        	 pwSubmit.addEventListener("click",function(e){

                 e.preventDefault();

                 if(password.value == password2.value){
	                let pw={userPw:password.value,userNum:parseInt(hidden.value)};
	                
	                console.log(pw);
	                $.ajax({
            	  
            	   url:"${pageContext.request.contextPath}/admin/userPwUpdate",
            	   type:"POST",
            	   data:JSON.stringify(pw),
            	   contentType:"application/json; charset=utf-8",
            	   success:function(item){
            		  
            		  alert("패스워드 수정이 완료되었습니다.");
            		   console.log("패스워드 "+item.userPw+"변경");
            		   
            		   
            		   password.value=item.userPw;
            		   
            	   }
            	   

            	   
               }); 
            

                 }
                 else{
                     alert("비밀번호의 값이 다릅니다.");
                 }

             });
              

             
             emailSubmit.addEventListener("click",function(e){
            	   e.preventDefault();
            	   console.log(email.value);
            	 let emailResult={userNum:parseInt(hidden.value),userEmail:email.value};
            	 console.log(emailResult);
              
                 if(!(regxp.test(email.value.trim()))){
                     alert("이메일의 형식이 아닙니다.");
                     
                 }
                 else{
                	
                	  $.ajax({
                    	  
                   	   url:"${pageContext.request.contextPath}/admin/userPwUpdate",
                   	   type:"POST",
                   	   data:JSON.stringify(emailResult),
                   	   contentType:"application/json; charset=utf-8",
                   	   success:function(item){
                   		  
                   		  alert("이메일 수정이 완료되었습니다.");
                   		   console.log("이메일 "+item.userEmail+"변경");
                   		   
                   		   
                   		   email.value=item.userEmail;
                   		   
                   	   }
                   	   

                   	   
                      }); 
                 }

             });

             phoneSubmit.addEventListener("click",function(e){
            	 let phoneResult={userNum:parseInt(hidden.value) ,userPhone:parseInt(phone.value)};
            	
                 e.preventDefault();
              if(!(regxp2.test(phone.value.trim()))){
                  alert("-을 제외하고 입력해주세요.");
              }
              else{
            	  
            		
               	  $.ajax({
                   	  
               	   url:"${pageContext.request.contextPath}/admin/userPwUpdate",
               	   type:"POST",
               	   data:JSON.stringify(phoneResult),
               	   contentType:"application/json; charset=utf-8",
               	   success:function(item){
                  		  
                  		  alert("전화번호 수정이 완료되었습니다.");
                  		   console.log(" 전화번호"+item.userPhone+"변경");
                  		   
                  		   
                  		   phone.value=item.userPhone;
                  		   
                  	   }
                  	   

                  	   
                     });   
            	  
            	  
            	  
            	  
            	  
            	  
            	  
              }
              
             });
        
             
            addrSubmit.addEventListener("click",function(e){
            	 let addrResult={userNum:parseInt(hidden.value) ,userAddr1:postCode.value,userAddr2:addr.value,userAddr3:detailAddr.value};
            	
                 e.preventDefault();
              if(postCode.value == "" && addr.value =="" && detailAddr.value ==""){
                  alert("주소를 입력해주세요.");
              }
              else{
            	  
            		
               	  $.ajax({
                   	  
               	   url:"${pageContext.request.contextPath}/admin/userPwUpdate",
               	   type:"POST",
               	   data:JSON.stringify(addrResult),
               	   contentType:"application/json; charset=utf-8",
               	   success:function(item){
                  		  
                  		  alert("주소 수정이 완료되었습니다.");
                  		 
                  		   
                  		   postCode.value=item.userAddr1;
                  		  addr.value=item.userAddr2;
                  		   detailAddr.value=item.userAddr3;
                  		   
                  	   }
                  	   

                  	   
                     });   
            	  
            	  
            	  
            	  
            	  
            	  
            	  
              }
              
             });
             
        	
        	
        });
        
        
        function loadDaumApi() {

            new daum.Postcode({
                oncomplete: function (data) {
                    console.log(data);

                    let doroAddr = data.roadAddress;
                    let jibunAddr = data.jibunAddress;

                    document.querySelector(".postCode").value = data.zonecode;
                    if (doroAddr !== '') {
                        document.querySelector(".addr").value = doroAddr;
                    } else if (jibunAddr !== '') {
                        document.querySelector(".addr").value = jibunAddr;

                    }
                }

            }).open();
        }
        
        

     
        
        
    </script>

</body>
</html>