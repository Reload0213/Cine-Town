<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cine Town</title>

    <!-- header & footer css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/headerFooter/headerFooter.css">
    <link href="favicon.ico" rel="icon">
    <!-- 글씨 폰트 Noto, Roboto -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
    <!-- XEICON 링크 -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/movieMain/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/movieMain/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/movieMain/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/movieMain/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/movieMain/animate-css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/movieMain/popup/magnific-popup.css">
    
    <!-- header & footer css-->
    
    
    




</head>

<body>
    <!-- header section strats -->
    <header class="header_section">
        <div class="container">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                    <span>
                        Cine Town
                    </span>
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class=""> </span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav  mx-auto ">
                        <li class="nav-item">
                            <a class="nav-link cinema" href="index.html">영화 </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="menu.html">굿즈</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/aboutUs/aboutUsMain">회사 소개</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/preview/main">시사회 / 이벤트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/faq/faqMain">고객 센터</a>
                        </li>
                    </ul>
                    <div class="user_option">
                        <a href="${pageContext.request.contextPath}/goods/wishlist" class="user_link" style="font-size: 1.7em;">
                            <i class="xi-heart" aria-hidden="true"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/goods/cart" class="user_link" style="font-size: 1.7em;">
                            <i class="xi-cart" aria-hidden="true"></i>
                        </a>

                        <a href="${pageContext.request.contextPath}/user/signup" class="user_link" style="font-size: 1.7em;">
                            <i class="xi-user-plus" aria-hidden="true"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/user/signin" class="order_online"
                            style="border: 1px solid #fff; background-color: #232830; padding: 5px 20px; ">
                            로그인
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- end header section -->

