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
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
	rel="stylesheet">
<!-- 한글은 노토산스 코리아 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
	rel="stylesheet">


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

	    <!-- 임승혁 관리자페이지 메인시작 -->
    <div class="hideMenu">
        <ul class="adminMenus">
            <li><a onclick="exitSideBar()" class="exitHideMenu" href="#">&times;</a></li>
            <!-- <li id="switchingTheme"><i class="fas fa-exchange-alt"></i>테마 변경</a></li>-->


            <li>
                <div class="userCon"><i class="xi-profile"></i><span class="username">임승혁 님</span></div><span
                    class="logoutBtnM">로그아웃</span>
            </li>

        </ul>

    </div>

    <div class="searchBox">

        <div class="searchCon">
            <span class="searchBtn"><i class="xi-search"></i></span><input type="text" name="" id=""><span
                class="xbtn">&times;</span></div>

    </div>

    <div class="mainCon">
        <nav>
            <div class="top">
                <div class="topCon">
                    <span class="hambugerBtn" onclick="viewSideBar()"><i class="xi-bars"></i> </span>
                    <h3 class="panel">관리자 페이지</h3>
                    <div class="rightCon">
                        <div class="userForm"><span class="userId">관리자 님</span><span class="logoutBtn">로그아웃</span></div>
                        <span class="search"><i class="xi-search"></i></span>
                    </div>
                </div>

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
            <h3>훼사한 초코보님의 회원 정보</h3>
        </div>
        <div class="userInfoCon">
            <div class="topUserCon">

                <div class="table">
                    <ul class="topUl row1">
                        <li>아이디</li>
                        <li>44130472</li>

                    </ul>
                    <ul class="topUl row2">
                        <li>가입일자</li>
                        <li>2022-01-30</li>

                    </ul>

                    <!-- 구분선 -->
                    <ul class="topUl row3 divisionLine">
                        <li></li>
                        <li></li>

                    </ul>

                    <ul class="topUl row4">
                        <li>성명</li>
                        <li>임승혁</li>


                    </ul>

                    <ul class="topUl row5">
                        <li>비밀번호</span></li>
                        <li><input type="password" class="pw" value="010-3489-1328"></input></li>
                        </ul>        
                        <ul class="topUl row6">
                            <li>확인</span></li>
                            <li><input type="password" class="pw2" value="010-3489-1328"></input><a href="#"
                                    class="pwSubmit">수정</a></li>

                                </ul> 


                        <ul class="topUl row7">
                            <li>연락처<span class="certification">인증완료</span></li>
                            <li><input type="text" class="phone" value="010-3489-1328"></input><a href="#"
                                        class="phoneSubmit">수정</a></li>


                            </ul>

                            <ul class="topUl row8">
                                <li>이메일<span class="certification">인증완료</span></li>
                                <li><input type="text" class="email" value="kikaio77@naver.com"></input><a href="#"
                                        class="emailSubmit">수정</a></li>


                            </ul>

                            <ul class="topUl row9 divisionLine">
                                <li></li>
                                <li></li>

                            </ul>

                            <ul class="topUl row10">
                                <li>우편번호</li>
                                <li><input type="text" class="postCode" onclick="loadDaumApi()"
                                        value="07080"></input></li>


                            </ul>
                            <ul class="topUl row11">
                                <li>주소</li>
                                <li><input type="text" class="addr" value="kikaio77@naver.com"></input></li>


                            </ul>

                            <ul class="topUl row12">
                                <li>상세주소</li>
                                <li><input type="text" class="detailAddr" value="kikaio77@naver.com"></input><a href="#"
                                        class="emailSubmit">수정</a></li>


                            </ul>

                            <ul class="topUl row13 divisionLine">
                                <li></li>
                                <li></li>

                            </ul>

                           <ul class="btnCon">
                               <li><a href="#" class="formSubmit">수정</a></li>
                               <li><a href="#" class="back">취소</a></li>
                           </ul>

                </div>
            </div>

        </div>










    </div>






    </div>

    <script src="assets/js/adminMainPage/adminUserPage/adminUserPage.js"></script>
    <script>
        let pw =  document.querySelector(".pw");
        let pw2 = document.querySelector(".pw2");
        let pwSubmit = document.querySelector(".pwSubmit");
        let regxp =RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
        let regxp2 =RegExp(/^[0-9][0-9]+$/);
        let email = document.querySelector(".email");
        let emailSubmit = document.querySelector(".emailSubmit");


        let phone = document.querySelector(".phone");
        let phoneSubmit = document.querySelector(".phoneSubmit");

        pwSubmit.addEventListener("click",function(e){

            e.preventDefault();

            if(pw.value == pw2.value){

            location.href="${pageContext.request.contextPath}/";

            }
            else{
                alert("비밀번호의 값이 다릅니다.");
            }

        });
         

        
        emailSubmit.addEventListener("click",function(e){
            e.preventDefault();
            if(!(regxp.test(email.value.trim()))){
                alert("이메일의 형식이 아닙니다.");
            }
            else{

            }

        });

        phoneSubmit.addEventListener("click",function(e){
            e.preventDefault();
         if(!(regxp2.test(phone.value.trim()))){
             alert("-을 제외하고 입력해주세요.");
         }

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