<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- GoodsDetail페이지의 스타일입니다. -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Short Description &ndash; Belle Multipurpose Bootstrap 4 Template</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/images/favicon.png" />
<!-- Plugins CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/GoodsMaincss/plugins.css">
<!-- Bootstap CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/GoodsMaincss/bootstrap.min.css">
<!-- Main Style CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/GoodsMaincss/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/GoodsMaincss/responsive.css">
<!-- GoodsDetail페이지의 스타일 종료입니다 -->
<!-- 특이사항: 한글화 부분에 들어가는 폰트 링크입니다. -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">

<!-- xeicon 사용 -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

























<style>

    .korean {
        font-family: 'Noto Sans KR', sans-serif;
    };
    
    
    /* 별점 디자인  시작*/
#myform fieldset{
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
}
#myform fieldset legend{
    text-align: left;
}
#myform input[type=radio]{
    display: none; /* 라디오박스 감춤 */
}
#myform label{
    font-size: 3em; /* 이모지 크기 */
    color: transparent; /* 기존 이모지 컬러 제거 */
    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
}
#myform label:hover{
    text-shadow: 0 0 0 rgb(250, 246, 21); /* 마우스 호버 */
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgb(250, 246, 21); /* 마우스 호버 뒤에오는 이모지들 */
}
#myform  input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgb(250, 246, 21); /* 마우스 클릭 체크 */
}







   
  
</style>




   <!-- 인덱스 기존 템플릿 영역 시작입니다 -->
     <!-- 기존의 헤더 영역 시작입니다 -->
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="">

  <title>CGV</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/indexCSS/bootstrap.css" />

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="${pageContext.request.contextPath }/assets/fonts/font-awesome.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath }/assets/css/index/indexCSS/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="${pageContext.request.contextPath }/assets/css/index/indexCSS/responsive.css" rel="stylesheet" />
  <!-- 인덱스 기존 템플릿 영역 끝입니다. -->
  <!-- 기존의 헤더영역 종료입니다 -->

</head>
<body class="template-product belle">


  <%@ include file="../include/header.jsp"%>

































<!-- 바디 시작입니다 -->
	<div class="pageWrapper">
        <!--Search Form Drawer-->
        <div class="search">
            <div class="search__form">
                <form class="search-bar__form" action="#">
                    <button class="go-btn search__button" type="submit"><i class="icon anm anm-search-l"></i></button>
                    <input class="search__input" type="search" name="q" value="" placeholder="Search entire store..." aria-label="Search" autocomplete="off">
                </form>
                <button type="button" class="search-trigger close-btn"><i class="icon anm anm-times-l"></i></button>
            </div>
        </div>
        <!--End Search Form Drawer-->
     
      
        <!--Mobile Menu-->
        <div class="mobile-nav-wrapper" role="navigation">
		<div class="closemobileMenu"><i class="icon anm anm-times-l pull-right"></i> Close Menu</div>
        <ul id="MobileNav" class="mobile-nav">
        	<li class="lvl1 parent megamenu"><a href="index.html">Home <i class="anm anm-plus-l"></i></a>
          <ul>
            <li><a href="#" class="site-nav">Home Group 1<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="index.html" class="site-nav">Home 1 - Classic</a></li>
                <li><a href="home2-default.html" class="site-nav">Home 2 - Default</a></li>
                <li><a href="home15-funiture.html" class="site-nav">Home 15 - Furniture </a></li>
                <li><a href="home3-boxed.html" class="site-nav">Home 3 - Boxed</a></li>
                <li><a href="home4-fullwidth.html" class="site-nav">Home 4 - Fullwidth</a></li>
                <li><a href="home5-cosmetic.html" class="site-nav">Home 5 - Cosmetic</a></li>
                <li><a href="home6-modern.html" class="site-nav">Home 6 - Modern</a></li>
                <li><a href="home7-shoes.html" class="site-nav last">Home 7 - Shoes</a></li>
              </ul>
            </li>
            <li><a href="#" class="site-nav">Home Group 2<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="home8-jewellery.html" class="site-nav">Home 8 - Jewellery</a></li>
                <li><a href="home9-parallax.html" class="site-nav">Home 9 - Parallax</a></li>
                <li><a href="home10-minimal.html" class="site-nav">Home 10 - Minimal</a></li>
                <li><a href="home11-grid.html" class="site-nav">Home 11 - Grid</a></li>
                <li><a href="home12-category.html" class="site-nav">Home 12 - Category</a></li>
                <li><a href="home13-auto-parts.html" class="site-nav">Home 13 - Auto Parts</a></li>
                <li><a href="home14-bags.html" class="site-nav last">Home 14 - Bags</a></li>
              </ul>
            </li>
            <li><a href="#" class="site-nav">New Sections<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="home11-grid.html" class="site-nav">Image Gallery</a></li>
                <li><a href="home5-cosmetic.html" class="site-nav">Featured Product</a></li>
                <li><a href="home7-shoes.html" class="site-nav">Columns with Items</a></li>
                <li><a href="home6-modern.html" class="site-nav">Text columns with images</a></li>
                <li><a href="home2-default.html" class="site-nav">Products Carousel</a></li>
                <li><a href="home9-parallax.html" class="site-nav last">Parallax Banner</a></li>
              </ul>
            </li>
            <li><a href="#" class="site-nav">New Features<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="home13-auto-parts.html" class="site-nav">Top Information Bar </a></li>
                <li><a href="#" class="site-nav">Age Varification </a></li>
                <li><a href="#" class="site-nav">Footer Blocks</a></li>
                <li><a href="#" class="site-nav">2 New Megamenu style</a></li>
                <li><a href="#" class="site-nav">Show Total Savings </a></li>
                <li><a href="#" class="site-nav">New Custom Icons</a></li>
                <li><a href="#" class="site-nav last">Auto Currency</a></li>
              </ul>
            </li>
          </ul>
        </li>
        	<li class="lvl1 parent megamenu"><a href="#">Shop <i class="anm anm-plus-l"></i></a>
          <ul>
            <li><a href="#" class="site-nav">Shop Pages<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="shop-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
                <li><a href="shop-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
                <li><a href="shop-fullwidth.html" class="site-nav">Fullwidth</a></li>
                <li><a href="shop-grid-3.html" class="site-nav">3 items per row</a></li>
                <li><a href="shop-grid-4.html" class="site-nav">4 items per row</a></li>
                <li><a href="shop-grid-5.html" class="site-nav">5 items per row</a></li>
                <li><a href="shop-grid-6.html" class="site-nav">6 items per row</a></li>
                <li><a href="shop-grid-7.html" class="site-nav">7 items per row</a></li>
                <li><a href="shop-listview.html" class="site-nav last">Product Listview</a></li>
              </ul>
            </li>
            <li><a href="#" class="site-nav">Shop Features<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="shop-left-sidebar.html" class="site-nav">Product Countdown </a></li>
                <li><a href="shop-right-sidebar.html" class="site-nav">Infinite Scrolling</a></li>

                <li><a href="shop-grid-3.html" class="site-nav">Pagination - Classic</a></li>
                <li><a href="shop-grid-6.html" class="site-nav">Pagination - Load More</a></li>
                <li><a href="product-labels.html" class="site-nav">Dynamic Product Labels</a></li>
                <li><a href="product-swatches-style.html" class="site-nav">Product Swatches </a></li>
                <li><a href="product-hover-info.html" class="site-nav">Product Hover Info</a></li>
                <li><a href="shop-grid-3.html" class="site-nav">Product Reviews</a></li>
                <li><a href="shop-left-sidebar.html" class="site-nav last">Discount Label </a></li>
              </ul>
            </li>
          </ul>
        </li>
        	<li class="lvl1 parent megamenu"><a href="product-layout-1.html">Product <i class="anm anm-plus-l"></i></a>
          <ul>
            <li><a href="product-layout-1.html" class="site-nav">Product Page<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="product-layout-1.html" class="site-nav">Product Layout 1</a></li>
                <li><a href="product-layout-2.html" class="site-nav">Product Layout 2</a></li>
                <li><a href="product-layout-3.html" class="site-nav">Product Layout 3</a></li>
                <li><a href="product-with-left-thumbs.html" class="site-nav">Product With Left Thumbs</a></li>
                <li><a href="product-with-right-thumbs.html" class="site-nav">Product With Right Thumbs</a></li>
                <li><a href="product-with-bottom-thumbs.html" class="site-nav last">Product With Bottom Thumbs</a></li>
              </ul>
            </li>
            <li><a href="short-description.html" class="site-nav">Product Features<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="short-description.html" class="site-nav">Short Description</a></li>
                <li><a href="product-countdown.html" class="site-nav">Product Countdown</a></li>
                <li><a href="product-video.html" class="site-nav">Product Video</a></li>
                <li><a href="product-quantity-message.html" class="site-nav">Product Quantity Message</a></li>
                <li><a href="product-visitor-sold-count.html" class="site-nav">Product Visitor/Sold Count </a></li>
                <li><a href="product-zoom-lightbox.html" class="site-nav last">Product Zoom/Lightbox </a></li>
              </ul>
            </li>
            <li><a href="#" class="site-nav">Product Features<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="product-with-variant-image.html" class="site-nav">Product with Variant Image</a></li>
                <li><a href="product-with-color-swatch.html" class="site-nav">Product with Color Swatch</a></li>
                <li><a href="product-with-image-swatch.html" class="site-nav">Product with Image Swatch</a></li>
                <li><a href="product-with-dropdown.html" class="site-nav">Product with Dropdown</a></li>
                <li><a href="product-with-rounded-square.html" class="site-nav">Product with Rounded Square</a></li>
                <li><a href="swatches-style.html" class="site-nav last">Product Swatches All Style</a></li>
              </ul>
            </li>
            <li><a href="#" class="site-nav">Product Features<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="product-accordion.html" class="site-nav">Product Accordion</a></li>
                <li><a href="product-pre-orders.html" class="site-nav">Product Pre-orders </a></li>
                <li><a href="product-labels-detail.html" class="site-nav">Product Labels</a></li>
                <li><a href="product-discount.html" class="site-nav">Product Discount In %</a></li>
                <li><a href="product-shipping-message.html" class="site-nav">Product Shipping Message</a></li>
                <li><a href="product-shipping-message.html" class="site-nav last">Size Guide </a></li>
              </ul>
            </li>
          </ul>
        </li>
        	<li class="lvl1 parent megamenu"><a href="about-us.html">Pages <i class="anm anm-plus-l"></i></a>
          <ul>
          	<li><a href="cart-variant1.html" class="site-nav">Cart Page <i class="anm anm-plus-l"></i></a>
                <ul class="dropdown">
                    <li><a href="cart-variant1.html" class="site-nav">Cart Variant1</a></li>
                    <li><a href="cart-variant2.html" class="site-nav">Cart Variant2</a></li>
                 </ul>
            </li>
            <li><a href="compare-variant1.html" class="site-nav">Compare Product <i class="anm anm-plus-l"></i></a>
                <ul class="dropdown">
                    <li><a href="compare-variant1.html" class="site-nav">Compare Variant1</a></li>
                    <li><a href="compare-variant2.html" class="site-nav">Compare Variant2</a></li>
                 </ul>
            </li>
			<li><a href="checkout.html" class="site-nav">Checkout</a></li>
            <li><a href="about-us.html" class="site-nav">About Us<span class="lbl nm_label1">New</span></a></li>
            <li><a href="contact-us.html" class="site-nav">Contact Us</a></li>
            <li><a href="faqs.html" class="site-nav">FAQs</a></li>
            <li><a href="lookbook1.html" class="site-nav">Lookbook<i class="anm anm-plus-l"></i></a>
              <ul>
                <li><a href="lookbook1.html" class="site-nav">Style 1</a></li>
                <li><a href="lookbook2.html" class="site-nav last">Style 2</a></li>
              </ul>
            </li>
            <li><a href="404.html" class="site-nav">404</a></li>
            <li><a href="coming-soon.html" class="site-nav">Coming soon<span class="lbl nm_label1">New</span></a></li>
          </ul>
        </li>
        	<li class="lvl1 parent megamenu"><a href="blog-left-sidebar.html">Blog <i class="anm anm-plus-l"></i></a>
          <ul>
            <li><a href="blog-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
            <li><a href="blog-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
            <li><a href="blog-fullwidth.html" class="site-nav">Fullwidth</a></li>
            <li><a href="blog-grid-view.html" class="site-nav">Gridview</a></li>
            <li><a href="blog-article.html" class="site-nav">Article</a></li>
          </ul>
        </li>
        	<li class="lvl1"><a href="#"><b>Buy Now!</b></a>
        </li>
      </ul>
	</div>
        <!--End Mobile Menu-->
        
        <!--Body Content-->
        <div id="page-content">
            <!--MainContent-->
            <div id="MainContent" class="main-content" role="main" style="margin-top: 200px;">
            
                
                <div id="ProductSection-product-template" class="product-template__container prstyle1 container">
                    <!--product-single-->
                    <div class="product-single">
                        <div class="row">
                        
                        <!-- 상품 좌측 이미지영역 -->
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="product-details-img">
                               
                                    <div class="zoompro-wrap product-zoom-right pl-20">
                                        <div class="zoompro-span">
                                            <img class="zoompro blur-up lazyload" data-zoom-image="${goods.gdsImage1 }" alt="" src="${goods.gdsImage1 }" />
                                        </div>
                                        <div class="product-labels"><span class="lbl on-sale">Sale</span><span class="lbl pr-label1">new</span></div>
                                        <div class="product-buttons">
                                            <a href="https://www.youtube.com/watch?v=93A2jOW5Mog" class="btn popup-video" title="View Video"><i class="xi-play" aria-hidden="true"></i></a>
                                            <a href="#" class="btn prlightbox" title="Zoom"><i class="xi-arrows-alt" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <div class="lightboximages">
                                        <a href="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-detail-page/cape-dress-1.jpg" data-size="1462x2048"></a>
                                        <a href="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-detail-page/cape-dress-2.jpg" data-size="1462x2048"></a>
                                        <a href="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-detail-page/cape-dress-3.jpg" data-size="1462x2048"></a>
                                        <a href="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-detail-page/cape-dress-4.jpg" data-size="1462x2048"></a>
                                        <a href="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-detail-page/cape-dress-5.jpg" data-size="1462x2048"></a>
                                        <a href="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-detail-page/cape-dress-6.jpg" data-size="1462x2048"></a>
                                        <a href="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-detail-page/cape-dress-7.jpg" data-size="731x1024"></a>
                                    </div>
        
                                </div>
                            </div>
                            <!-- 상품 좌측 이미지영역 종료 -->
                            
                            
                            
                            <!-- 상품 주문영역 시작 -->
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="product-single__meta">
                                        <h1 class="product-single__title korean">${goods.gdsName }</h1>
                                        <div class="product-nav clearfix">					
                                            <a href="#" class="next" title="Next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="prInfoRow">
                                            <div class="product-stock"> <span class="instock ">In Stock</span> <span class="outstock hide">Unavailable</span> </div>
                                            <div class="product-sku korean">상품코드: <span class="variant-sku">19115-rdxs</span></div>
                                            <div class="product-review">
                                            
                                            <!-- 상품 별점 시작 -->
                                            <a class="reviewLink" href="#tab2">
                                             <c:forEach begin = "1" end = "${rvo.grCount}"  var="i">  
                                            <i class="font-13 fa xi-star"></i>
                                            </c:forEach> 
                                            
                                            <c:forEach begin = "1" end = "${5 - rvo.grCount}"  var="i">  
                                            <i class="font-13 fa xi-star-o"></i>
                                            </c:forEach> 
                                          <!--   <i class="font-13 fa xi-star-o"></i>
                                            <i class="font-13 fa xi-star-o"></i>
                                            <i class="font-13 fa xi-star-o"></i>
                                            <i class="font-13 fa xi-star-o"></i> -->
                                            <!-- 상품 별점 종료 -->
                                            
                                            <!-- 리뷰 개수 시작 -->
                                            <span class="spr-badge-caption">${rvo2.grCount } reviews</span></a></div>
                                            <!-- 리뷰 개수 종료 -->
                                        </div>
                                        <p class="product-single__price product-single__price-product-template">
                                            <span class="visually-hidden">Regular price</span>
                                          <!--   <s id="ComparePrice-product-template"><span class="money korean">600.00원</span></s> -->
                                            <span class="product-price__price product-price__price-product-template product-price__sale product-price__sale--single">
                                                <span id="ProductPrice-product-template"><span class="money korean">${goods.gdsPrice }원</span></span>
                                            </span>
                                      <!--       <span class="discount-badge"> <span class="devider">|</span>&nbsp;
                                                <span class="korean">할인</span>
                                                <span id="SaveAmount-product-template" class="product-single__save-amount">
                                                <span class="money">$100.00</span>
                                                </span>
                                                <span class="off">(<span>16</span>%)</span>
                                            </span>   -->
                                        </p>
                                        <div class="orderMsg" data-user="23" data-time="24">
                                            <img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/order-icon.jpg" alt="" /> <strong class="items">5</strong> sold in last <strong class="time">26</strong> hours</div>
                                        </div>
                                    <div class="product-single__description rte">
                                        <ul>
                                            <li>${goods.gdsDetail }</li>
                                            <li>${goods.gdsDetail2 }</li>
                                            <li>${goods.gdsDetail3 }</li>
                                            <li>${goods.gdsDetail4 }</li>
                                        </ul>
                                        <!-- <p>재고</p> -->
                                    </div>
                                    <div id="quantity_message">서두르세요! 재고가  <span class="items">${goods.gdsStock }</span>  개 남았습니다.</div>
                                    
                                    
                                    
                                    <!-- 주문 / 위시리스트 폼 양식 -->
                                 <%--    <form method="post" action="http://annimexweb.com/cart/add" id="product_form_10508262282" accept-charset="UTF-8" class="product-form product-form-product-template hidedropdown" enctype="multipart/form-data"> --%>
                                    <form:form action="${pageContext.request.contextPath }/cart/insertCartItem" modelAttribute="cartVO" id="product_form_10508262282"  class="product-form product-form-product-template hidedropdown">
                                    <form:hidden path="userNum" value="${sessionScope.account.userNum }"/>
                                    <form:hidden path="gdsNum" value="${goods.gdsNum }"/>
                                        <div class="swatch clearfix swatch-0 option1" data-option-index="0">
                                        <!-- 컬러 폼 시작-->
                                    <!--         <div class="product-form__item">
                                              <label class="header">Color: <span class="slVariant">Red</span></label>
                                              <div data-value="Black" class="swatch-element color black available">
                                                <input class="swatchInput" id="swatch-0-black" type="radio" name="option-0" value="Black"><label class="swatchLbl color small" for="swatch-0-black" style="background-color:black;" title="Black"></label>
                                              </div>
                                              <div data-value="Maroon" class="swatch-element color maroon available">
                                                <input class="swatchInput" id="swatch-0-maroon" type="radio" name="option-0" value="Maroon"><label class="swatchLbl color small" for="swatch-0-maroon" style="background-color:maroon;" title="Maroon"></label>
                                              </div>
                                              <div data-value="Blue" class="swatch-element color blue available">
                                                <input class="swatchInput" id="swatch-0-blue" type="radio" name="option-0" value="Blue"><label class="swatchLbl color small" for="swatch-0-blue" style="background-color:blue;" title="Blue"></label>
                                              </div>
                                              <div data-value="Dark Green" class="swatch-element color dark-green available">
                                                <input class="swatchInput" id="swatch-0-dark-green" type="radio" name="option-0" value="Dark Green"><label class="swatchLbl color small" for="swatch-0-dark-green" style="background-color:darkgreen;" title="Dark Green"></label>
                                              </div>
                                            </div> -->
                                            <!-- 컬러 폼 종료  -->
                                        </div>
                                        <div class="swatch clearfix swatch-1 option2" data-option-index="1">
                                        <!-- 사이즈 폼 시작 -->
                                     <!--        <div class="product-form__item">
                                              <label class="header">Size: <span class="slVariant">XS</span></label>
                                              <div data-value="XS" class="swatch-element xs available">
                                                <input class="swatchInput" id="swatch-1-xs" type="radio" name="option-1" value="XS">
                                                <label class="swatchLbl medium rectangle" for="swatch-1-xs" title="XS">XS</label>
                                              </div>
                                              <div data-value="S" class="swatch-element s available">
                                                <input class="swatchInput" id="swatch-1-s" type="radio" name="option-1" value="S">
                                                <label class="swatchLbl medium rectangle" for="swatch-1-s" title="S">S</label>
                                              </div>
                                              <div data-value="M" class="swatch-element m available">
                                                <input class="swatchInput" id="swatch-1-m" type="radio" name="option-1" value="M">
                                                <label class="swatchLbl medium rectangle" for="swatch-1-m" title="M">M</label>
                                              </div>
                                              <div data-value="L" class="swatch-element l available">
                                                <input class="swatchInput" id="swatch-1-l" type="radio" name="option-1" value="L">
                                                <label class="swatchLbl medium rectangle" for="swatch-1-l" title="L">L</label>
                                              </div>
                                            </div> -->
                                            <!-- 사이즈 폼 종료 -->
                                        </div>
                                        <p class="infolinks"><a href="#sizechart" class="sizelink btn"> 사이즈 표</a> <a href="#productInquiry" class="emaillink btn"> 상품 문의하기</a></p>
                                        <!-- Product Action -->
                                        <div class="product-action clearfix">
                                            <div class="product-form__item--quantity">
                                                <div class="wrapQtyBtn">
                                                    <div class="qtyField">
                                                        <a class="qtyBtn minus" href="javascript:void(0);"><i class="fa anm xi-minus" aria-hidden="true"></i></a>
                                                        <form:input path="cartAmount" type="text" id="Quantity" name="quantity" value="1" class="product-form__input qty"/>
                                                       <!--  <input type="text" id="Quantity" name="quantity" value="1" class="product-form__input qty"> -->
                                                        <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa anm xi-plus" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                            </div>                                
                                            <div class="product-form__item--submit">
                                             <!--    <button type="button" name="add" class="btn product-form__cart-submit"> -->
                                             <c:if  test="${sessionScope.account.userId != null}">
                                                <form:button type="submit" name="add" class="btn product-form__cart-submit">
                                                    <span>장바구니에 담기</span>
                                                    </form:button>
                                                    </c:if>
                                        <!--         </button> -->
                                            </div>
                                                <c:if  test="${sessionScope.account.userId != null}">
                                            <div class="shopify-payment-button" data-shopify="payment-button">
                                               <!--  <button type="button" class="shopify-payment-button__button shopify-payment-button__button--unbranded">바로 구매하기</button> -->
                                                <form:button type="submit" class="shopify-payment-button__button shopify-payment-button__button--unbranded">바로 구매하기</form:button>
                                            </div>
                                            </c:if>
                                        </div>
                                        <!-- End Product Action -->
                                        </form:form>
                              <%--       </form> --%>
                                    
                                    
                                    
                                    
                                    
                                    
                                    <div class="display-table shareRow">
                                            <div class="display-table-cell medium-up--one-third">
                                                <div class="wishlist-btn">
                                                    <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist"><i class="xi-heart-o" aria-hidden="true"></i> <span>위시리스트에 담기</span></a>
                                                </div>
                                            </div>
                                            <div class="display-table-cell text-right">
                                                <div class="social-sharing">
                                                    <a target="_blank" href="#" class="btn btn--small btn--secondary btn--share share-facebook" title="Share on Facebook">
                                                        <i class="fa fa-facebook-square" aria-hidden="true"></i> <span class="share-title" aria-hidden="true">Share</span>
                                                    </a>
                                                    <a target="_blank" href="#" class="btn btn--small btn--secondary btn--share share-twitter" title="Tweet on Twitter">
                                                        <i class="fa fa-twitter" aria-hidden="true"></i> <span class="share-title" aria-hidden="true">Tweet</span>
                                                    </a>
                                                    <a href="#" title="Share on google+" class="btn btn--small btn--secondary btn--share" >
                                                        <i class="fa fa-google-plus" aria-hidden="true"></i> <span class="share-title" aria-hidden="true">Google+</span>
                                                    </a>
                                                    <a target="_blank" href="#" class="btn btn--small btn--secondary btn--share share-pinterest" title="Pin on Pinterest">
                                                        <i class="fa fa-pinterest" aria-hidden="true"></i> <span class="share-title" aria-hidden="true">Pin it</span>
                                                    </a>
                                                    <a href="#" class="btn btn--small btn--secondary btn--share share-pinterest" title="Share by Email" target="_blank">
                                                        <i class="fa fa-envelope" aria-hidden="true"></i> <span class="share-title" aria-hidden="true">Email</span>
                                                    </a>
                                                 </div>
                                            </div>
                                        </div>
                                        
                                    <p id="freeShipMsg" class="freeShipMsg" data-price="199"><i class="fa fa-truck" aria-hidden="true"></i> 10만원 이상 구매시 <!-- <b class="freeShip"><span class="money" data-currency-usd="$199.00" data-currency="USD">$199.00</span></b>  AWAY FROM--> <b>베송비 무료</b></p>
                                    <p class="shippingMsg"><i class="fa fa-clock-o" aria-hidden="true"></i> 배송은 평균 <b id="fromDate">2~3일</b> 정도 소요됩니다. <!-- <b id="toDate">Tue. May 7</b>. --></p>
                                    <div class="userViewMsg" data-user="20" data-time="11000"><i class="fa fa-users" aria-hidden="true"></i> <!-- <strong class="uersView">14</strong> --> 지역에 따라 배송에 차이가 있을 수 있습니다.</div>
                                </div>
                                <!-- 상품 주문영역 종료 -->
                                
                                
                                
                                
                                
                        </div>
                    </div>
                    <!--End-product-single-->
                    <!--Product Fearure-->
                    <div class="prFeatures">
                        <div class="row">
                            <div class="col-12 col-sm-6 col-md-3 col-lg-3 feature">
                                <img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/credit-card.png" alt="Safe Payment" title="Safe Payment" />
                                <div class="details korean"><h3 class="korean">안전 결제</h3>안전 결제 수단을 제공합니다.</div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 col-lg-3 feature">
                                <img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/shield.png" alt="Confidence" title="Confidence" />
                                <div class="details korean"><h3 class="korean">개인정보 보호</h3>검증된 개인정보 보호 기술을 사용합니다.</div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 col-lg-3 feature">
                                <img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/worldwide.png" alt="Worldwide Delivery" title="Worldwide Delivery" />
                                <div class="details korean"><h3 class="korean">국제 배송</h3>무료 &amp; 신속정확 &amp; 전지역 가능.</div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3 col-lg-3 feature">
                                <img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/phone-call.png" alt="Hotline" title="Hotline" />
                                <div class="details korean"><h3 class="korean">핫 라인</h3>언제든지 문의하세요 4141 456 789, 4125 666 888</div>
                            </div>
                        </div>
                    </div>
                    <!--End Product Fearure-->
                    <!--Product Tabs-->
                    <div class="tabs-listing">
                        <ul class="product-tabs">
                            <li rel="tab1"><a class="tablink">상품 디테일</a></li>
                            <li rel="tab2"><a class="tablink">상품 후기</a></li>
                            <li rel="tab3"><a class="tablink">사이즈 표</a></li>
                            <li rel="tab4"><a class="tablink">배송 &amp; 교환/환불</a></li>
                        </ul>
                        <div class="tab-container">
                            <div id="tab1" class="tab-content">
                                <div class="product-description rte">
                                    <p>CineTown은 영화 리뷰와 더불어 영화와 관련된 다양한 굿즈 상품들을 제공합니다. 교환, 환불은 배송 완료일 기준 7일 이내로만 유효합니다. 모든 상품은 제품안전 기준법을 통과한 안전성을 갖춘 제품입니다. 제품에 문제가 있을 경우 02-0000-0000으로 문의 또는 CineTown@gmail.com으로 연락주세요. 24시간 내로 답변 드리겠습니다. 감사합니다.</p>
                                    <ul>
                                      <li>${goods.gdsDetail }</li>
                                      <li>${goods.gdsDetail2 }</li>
                                      <li>${goods.gdsDetail3 }</li>
                                      <li>${goods.gdsDetail4 }</li>
                                      <li>${goods.gdsDetail5 }</li>
                                    </ul>
                                    <h3>${goods.gdsDetail }</h3>
                                    <p>해당 제품은 쿠폰 적용이 불가한 상품입니다. 쿠폰이 발급되면 문자로 도착한 알림을 확인해주세요. &nbsp;</p>
                                    <h3>${goods.gdsDetail2 }</h3>
									<p>주의사항: 영유아의 손에 닿지 않는 곳에 보관해주세요. / 해당 상품은 식품이 아닙니다. 입에 넣을수 없습니다. / 제품을 직사광선이 없는 서늘한 곳에 보관해주세요. 변색의 우려가 있습니다. / 제품에 열을 가하지 말아주세요.</p>
                                    <p>위 주의사항을 지키지 않았을시 일어나는 파손, 피해는 CineTown에서 보상해주지 않습니다. </p>
                                    <h3>${goods.gdsDetail3 }</h3>
                                    <p>해당 제품은 산업안전법을 준수하여 만들어진 제품입니다. 제품 기준치를 통과한 제품으로 화학 변이로부터 안전한 제품입니다.</p>
                                    <h3>${goods.gdsDetail4 }</h3>
                                    <p>요청사항을 최대한 구체적으로 적어주세요. 제품 번호, 색상, 사이즈에 따른 요청사항을 적어주셔야 합니다. 이를 따르지 않았을 경우 요청사항은 무시됩니다.</p>
                                    <h3>${goods.gdsDetail5 }</h3>
                                    <p>해당 이벤트는 1인 1회 참여 가능합니다. 중복참여는 불가능합니다.</p>
                                    <h3>${goods.gdsDetail6 }</h3>
									<p>모든 이벤트는 마감기한 이후로 참여한 경우 인정되지 않습니다. </p>
                                    <h3>${goods.gdsDetail7 }</h3>
                                    <p>도서/산간 지역의 경우 15만원 이상 구매시 배송비가 무료입니다. </p>
                                </div>
                            </div>
                            
                            <div id="tab2" class="tab-content">
                                <div id="shopify-product-reviews">
                                    <div class="spr-container">
                                        <div class="spr-header clearfix">
                                            <div class="spr-summary">
                                                <span class="product-review"><a class="reviewLink"><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i> </a><span class="spr-summary-actions-togglereviews korean"> <span id="grCountDiv">${rvo2.grCount }</span> 개의 후기가 작성됨</span></span>
                                                <span class="spr-summary-actions">
                                                    <a href="#" class="spr-summary-actions-newreview btn korean">리뷰 작성하기</a>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="spr-content">
                                        
                                        <!-- 로그인하면 리뷰가 보이도록 함 영역 시작 -->
                                        <c:if test="${sessionScope.account.userId != null}">
                                            <div class="spr-form clearfix">
                                            
                                                <div id="new-review-form" class="new-review-form">
                                                    <h3 class="spr-form-title korean">리뷰 작성하기</h3>
                                         
                                                    <fieldset class="spr-form-review">
                                  
                                                      <div class="spr-form-review-title" >
                                                        <label class="spr-form-label korean" for="review_title_10508262282">별점 </label>
                                                              <fieldset id="myform">
                                                   
       															 <!-- css고치면 value값 바꿔줘야함 -->
     															   <input type="radio" name="rating" value="5" id="rate5" class="rate"><label for="rate5">⭐</label>
     															    <input type="radio" name="rating" value="4" id="rate4" class="rate"><label for="rate4">⭐</label>
                                                      				<input type="radio" name="rating" value="3" id="rate3" class="rate"><label for="rate3">⭐</label>
                                                      	 			<input type="radio" name="rating" value="2" id="rate2" class="rate"><label for="rate2">⭐</label>
                                                      	 			  <input type="radio" name="rating" value="1" id="rate1" class="rate"><label for="rate1">⭐</label>
                                                      </fieldset>
                                                      </div>
                                                      
                                                      
                                                      
                                                      
                                                      
                                                      
                                                
                                                      <div class="spr-form-review-title">
                                                        <label class="spr-form-label korean" for="review_title_10508262282">리뷰 제목</label>
                                                        <input class="spr-form-input spr-form-input-text korean" id="reviewTitle" type="text"  placeholder="리뷰 제목을 써주세요">
                                                      </div>
                                                
                                                      <div class="spr-form-review-body">
                                                        <label class="spr-form-label korean" for="review_body_10508262282">리뷰 내용 <span class="spr-form-review-body-charactersremaining korean">(1500)자</span></label>
                                                        <div class="spr-form-input">
                                                          <textarea class="spr-form-input spr-form-input-textarea korean" id="reviewContent"  rows="10" placeholder="리뷰를 작성해주세요"></textarea>
                                                        </div>
                                                      </div>
                                                    </fieldset>
                                                    <fieldset class="spr-form-actions">
                                                   <!--      <input type="submit" class="spr-button spr-button-primary button button-primary btn btn-primary korean" value="리뷰 작성하기"> -->
                                                        <button type="submit" class="spr-button spr-button-primary button button-primary btn btn-primary korean" id="reviewSubmit" >리뷰 작성하기</button>
                                                    </fieldset>
                                                    </div>
                                           
                                            </div>
                                            </c:if>
                                            <!-- 로그인하면 리뷰가 보이도록 함 영역 종료 -->
                                            
                                            
                                            <!-- 여기부러 굿즈 리뷰 페이지 시작 -->
                                            <div class="spr-reviews">
                                            
                                            <!-- 댓글을 작성하면 해당 영역에 달림 -->
                                                <div class="spr-review">
                                                    <div class="spr-review-header">
                                                        <span class="product-review spr-starratings spr-review-header-starratings"><span class="reviewLink">
                                                        <!-- 리뷰 별점 -->
                                                     
                                                        
                                                        <i class="xi-star"></i>
                                                      
                                                        <i class="xi-star-o"></i>
                                                        
                                                        </span></span>
                                                        <h3 class="spr-review-header-title korean">제품 리뷰 한글 영역 테스트입니다. 하단 날짜는 영어로 갑니다</h3>
                                                        <span class="spr-review-header-byline"><strong>dsacc</strong> on <strong>Apr 09, 2019</strong></span>
                                                    </div>
                                                    <div class="spr-review-content">
                                                        <p class="spr-review-content-body korean">해당 영역은 제품 리뷰 내용입니다. 한글 테스트입니다.</p>
                                                    </div>
                                                    <button style="margin: 5px" class="spr-summary-actions-newreview btn korean">리뷰 수정하기</button>  
                                                    <button style="margin: 5px" class="spr-summary-actions-newreview btn korean">리뷰 삭제하기</button>
                                                </div>
                                                <!-- 해당 영역 종료 -->
                                                
                                      
                                                
                                                
                                            </div>
                                            
                                            
                                            
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <div id="tab3" class="tab-content">
                                <h3>WOMEN'S BODY SIZING CHART</h3>
                                <table>
                                  <tbody>
                                    <tr>
                                      <th>Size</th>
                                      <th>XS</th>
                                      <th>S</th>
                                      <th>M</th>
                                      <th>L</th>
                                      <th>XL</th>
                                    </tr>
                                    <tr>
                                      <td>Chest</td>
                                      <td>31" - 33"</td>
                                      <td>33" - 35"</td>
                                      <td>35" - 37"</td>
                                      <td>37" - 39"</td>
                                      <td>39" - 42"</td>
                                    </tr>
                                    <tr>
                                      <td>Waist</td>
                                      <td>24" - 26"</td>
                                      <td>26" - 28"</td>
                                      <td>28" - 30"</td>
                                      <td>30" - 32"</td>
                                      <td>32" - 35"</td>
                                    </tr>
                                    <tr>
                                      <td>Hip</td>
                                      <td>34" - 36"</td>
                                      <td>36" - 38"</td>
                                      <td>38" - 40"</td>
                                      <td>40" - 42"</td>
                                      <td>42" - 44"</td>
                                    </tr>
                                    <tr>
                                      <td>Regular inseam</td>
                                      <td>30"</td>
                                      <td>30½"</td>
                                      <td>31"</td>
                                      <td>31½"</td>
                                      <td>32"</td>
                                    </tr>
                                    <tr>
                                      <td>Long (Tall) Inseam</td>
                                      <td>31½"</td>
                                      <td>32"</td>
                                      <td>32½"</td>
                                      <td>33"</td>
                                      <td>33½"</td>
                                    </tr>
                                  </tbody>
                                </table>
                                <h3>MEN'S BODY SIZING CHART</h3>
                                <table>
                                  <tbody>
                                    <tr>
                                      <th>Size</th>
                                      <th>XS</th>
                                      <th>S</th>
                                      <th>M</th>
                                      <th>L</th>
                                      <th>XL</th>
                                      <th>XXL</th>
                                    </tr>
                                    <tr>
                                      <td>Chest</td>
                                      <td>33" - 36"</td>
                                      <td>36" - 39"</td>
                                      <td>39" - 41"</td>
                                      <td>41" - 43"</td>
                                      <td>43" - 46"</td>
                                      <td>46" - 49"</td>
                                    </tr>
                                    <tr>
                                      <td>Waist</td>
                                      <td>27" - 30"</td>
                                      <td>30" - 33"</td>
                                      <td>33" - 35"</td>
                                      <td>36" - 38"</td>
                                      <td>38" - 42"</td>
                                      <td>42" - 45"</td>
                                    </tr>
                                    <tr>
                                      <td>Hip</td>
                                      <td>33" - 36"</td>
                                      <td>36" - 39"</td>
                                      <td>39" - 41"</td>
                                      <td>41" - 43"</td>
                                      <td>43" - 46"</td>
                                      <td>46" - 49"</td>
                                    </tr>
                                  </tbody>
                                </table>
                                <div class="text-center">
                                    <img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/size.jpg" alt="" />
                                </div>
                          </div>
                            
                            <div id="tab4" class="tab-content">
                                <h4 class="korean">교환/환불 정책</h4>
                                <p class="korean">교환/환불정책 페이지입니다.</p>
                                <p class="korean">교환/환불은 배송 완료일 기준 7일 이내로만 가능합니다. 해당 기준일이 지났을 경우 교환/환불은 불가능합니다.</p>
                                <h4 class="korean">배송</h4>
                                <p class="korean">배송은 평균 2~3일 정도 소요됩니다. 도서/산간 지역의 경우 15만원 이상 구매시 배송비가 무료입니다. 배송 중 발생한 파손은 교환 / 환불이 가능합니다.</p>
                            </div>
                        </div>
                    </div>
                    <!--End Product Tabs-->
                    
                    <!--Related Product Slider-->
                    <div class="related-product grid-products">
                        <header class="section-header">
                            <h2 class="section-header__title text-center h2"><span style="color:white;" class="korean">연관 상품들</span></h2>
                            <p style="color:white;" class="sub-heading korean">다양한 영화의 굿즈를 만나보세요</p>
                        </header>
                        
                        
                        <!-- 연관 상품들 슬라이드 영역 시작 -->
                         
                        <div class="productPageSlider">
                         
                         <!-- 카드영역(추정) 시작-->
                          <c:forEach var="goods" items="${goodsList }">
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img class="primary blur-up lazyload" data-src="${goods.gdsImage1 }" src="${goods.gdsImage1 }" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="hover blur-up lazyload" data-src="${goods.gdsImage2 }" src="${goods.gdsImage2 }" alt="image" title="product">
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels rectangular"><span class="lbl on-sale">-16%</span> <span class="lbl pr-label1">new</span></div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                       <!--  <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button> -->
                                        <a href="${pageContext.request.contextPath }/goods/${goods.gdsNum}?id=${goods.gdsNum}" style="background-color: white; color: black;" class="btn btn-addto-cart" >Move to Page </a>
                                    </form>
                                    <div class="button-set">
                                        <a href="${pageContext.request.contextPath }/goods/${goods.gdsNum}?id=${goods.gdsNum}" title="Quick View" class="quick-view" tabindex="0">
                                            <i class="xi-zoom-in"></i>
                                        </a>
                                        
                                        
                                     <!--    <div class="wishlist-btn">
                                            <a class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i class="xi-heart-o"></i>
                                            </a>
                                        </div> -->
                                        
                                        
                                         <form:form  modelAttribute="productWishlistVO" action="${pageContext.request.contextPath }/productWishlist/insertProductWishlist" >
                                         <div style="border : none;" class="wishlist-btn">
                                         <form:hidden path="userNum" value="${sessionScope.account.userNum }"/>
                                         <form:hidden path="gdsNum" value="${goods.gdsNum }"/>
                                         <form:button style="border : none;" class="wishlist add-to-wishlist" type="submit">
                                         <i style="color:rgb(236,46,74); font-size: 24px; " class="xi-heart"></i>
                                         </form:button>
                                         </div>
                                         </form:form>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">${goods.gdsName }</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <!-- <span class="old-price">$500.00</span> -->
                                        <span class="price">${goods.gdsPrice }원</span>
                                    </div>
                                    <!-- End product price -->
                                    
                                    <div class="product-review">
                                      <c:forEach begin="1" end="${goods.grScore}" step="1" var="i">
                                        <i style="color:rgb(255,149,0);" class="font-13 xi-star"></i>
                                       </c:forEach>
                                         <c:forEach begin="1" end="${5 - goods.grScore}" step="1" var="i">
                                        <i style="color:rgb(255,149,0);" class="font-13 xi-star-o"></i>
                                        </c:forEach>
                                    </div>
                                   
                                </div>
                                <!-- End product details -->
                            </div>
                            <!-- 카드영역 추정 종료 -->
                            
                            
                           <%--  <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image2.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image2.jpg" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image2-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image2-1.jpg" alt="image" title="product">
                                        <!-- End hover image -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                    </form>
                                    <div class="button-set">
                                        <a href="#" title="Quick View" class="quick-view" tabindex="0">
                                            <i class="xi-zoom-in"></i>
                                        </a>
                                        <div class="wishlist-btn">
                                            <a class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i class="xi-heart-o"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
        
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">Elastic Waist Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="price">$748.00</span>
                                    </div>
                                    <!-- End product price -->
                                    <div class="product-review">
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                    </div>
                                    <!-- Variant -->
                                    <ul class="swatches">
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant2-1.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant2-2.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant2-3.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant2-4.jpg" alt="image" /></li>
                                    </ul>
                                    <!-- End Variant -->
                                </div>
                                <!-- End product details -->
                            </div>
                            
                            
                            
                            
                            
                            
                            
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image3.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image3.jpg" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image3-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image3-1.jpg" alt="image" title="product">
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels rectangular"><span class="lbl pr-label2">Hot</span></div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                    </form>
                                    <div class="button-set">
                                        <a href="#" title="Quick View" class="quick-view" tabindex="0">
                                            <i class="xi-zoom-in"></i>
                                        </a>
                                        <div class="wishlist-btn">
                                            <a class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i class="xi-heart-o"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
        
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">3/4 Sleeve Kimono Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="price">$550.00</span>
                                    </div>
                                    <!-- End product price -->
                                    
                                    <div class="product-review">
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star-o"></i>
                                    </div>
                                    <!-- Variant -->
                                    <ul class="swatches">
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant3-1.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant3-2.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant3-3.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant3-4.jpg" alt="image" /></li>
                                    </ul>
                                    <!-- End Variant -->
                                </div>
                                <!-- End product details -->
                            </div>
                            
                            
                            
                            
                            
                            
                            
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image4.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image4.jpg" alt="image" title="product" />
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image4-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image4-1.jpg" alt="image" title="product" />
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels"><span class="lbl on-sale">Sale</span></div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                    </form>
                                    <div class="button-set">
                                        <a href="#" title="Quick View" class="quick-view" tabindex="0">
                                            <i class="xi-zoom-in"></i>
                                        </a>
                                        <div class="wishlist-btn">
                                            <a class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i class="xi-heart-o"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
        
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">Cape Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="old-price">$900.00</span>
                                        <span class="price">$788.00</span>
                                    </div>
                                    <!-- End product price -->
                                    
                                    <div class="product-review">
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star-o"></i>
                                        <i class="font-13 fa fa-star-o"></i>
                                    </div>
                                    <!-- Variant -->
                                    <ul class="swatches">
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant4-1.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant4-2.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant4-3.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant4-4.jpg" alt="image" /></li>
                                    </ul>
                                    <!-- End Variant -->
                                </div>
                                <!-- End product details -->
                            </div>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image5.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image5.jpg" alt="image" title="product" />
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image5-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image5-1.jpg" alt="image" title="product" />
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels"><span class="lbl on-sale">Sale</span></div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
        
                                    <!-- Start product button -->
                                    <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                    </form>
                                    <div class="button-set">
                                        <a href="#" title="Quick View" class="quick-view" tabindex="0">
                                            <i class="xi-zoom-in"></i>
                                        </a>
                                        <div class="wishlist-btn">
                                            <a class="wishlist add-to-wishlist" href="wishlist.html">
                                                <i class="xi-heart-o"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- end product button -->
                                </div>
                                <!-- end product image -->
        
                                <!--start product details -->
                                <div class="product-details text-center">
                                    <!-- product name -->
                                    <div class="product-name">
                                        <a href="#">Paper Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="price">$550.00</span>
                                    </div>
                                    <!-- End product price -->
                                    
                                    <div class="product-review">
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                        <i class="font-13 fa fa-star"></i>
                                    </div>
                                    <!-- Variant -->
                                    <ul class="swatches">
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant3-1.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant3-2.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant3-3.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant3-4.jpg" alt="image" /></li>
                                    </ul>
                                    <!-- End Variant -->
                                </div>
                                <!-- End product details -->
                            </div>








                            <div class="col-12 item">
                                                <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="#">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image6.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image6.jpg" alt="image" title="product">
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image6-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image6-1.jpg" alt="image" title="product">
                                                        <!-- End hover image -->
                                                        <!-- product label -->
                                                        <div class="product-labels rectangular"><span class="lbl on-sale">-16%</span> <span class="lbl pr-label1">new</span></div>
                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->
            
                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <div class="button-set">
                                                        <a href="#" title="Quick View" class="quick-view" tabindex="0">
                                                            <i class="xi-zoom-in"></i>
                                                        </a>
                                                        <div class="wishlist-btn">
                                                            <a class="wishlist add-to-wishlist" href="wishlist.html">
                                                                <i class="xi-heart-o"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->
            
                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="#">Zipper Jacket</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">$788.00</span>
                                                    </div>
                                                    <!-- End product price -->
                                                    
                                                    <div class="product-review">
                                                        <i class="font-13 fa fa-star"></i>
                                                        <i class="font-13 fa fa-star"></i>
                                                        <i class="font-13 fa fa-star"></i>
                                                        <i class="font-13 fa fa-star-o"></i>
                                                        <i class="font-13 fa fa-star-o"></i>
                                                    </div>
                                                </div>
                                                <!-- End product details -->
                                            </div>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                            <div class="col-12 item">
                                                <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="#">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image7.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image7.jpg" alt="image" title="product">
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image7-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image7-1.jpg" alt="image" title="product">
                                                        <!-- End hover image -->
                                                    </a>
                                                    <!-- end product image -->
            
                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href='cart.html'"method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <div class="button-set">
                                                        <a href="#" title="Quick View" class="quick-view" tabindex="0">
                                                            <i class="xi-zoom-in"></i>
                                                        </a>
                                                        <div class="wishlist-btn">
                                                            <a class="wishlist add-to-wishlist" href="wishlist.html">
                                                                <i class="xi-heart-o"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->
            
                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="#">Zipper Jacket</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">$748.00</span>
                                                    </div>
                                                    <!-- End product price -->
                                                    <div class="product-review">
                                                        <i class="font-13 fa fa-star"></i>
                                                        <i class="font-13 fa fa-star"></i>
                                                        <i class="font-13 fa fa-star"></i>
                                                        <i class="font-13 fa fa-star"></i>
                                                        <i class="font-13 fa fa-star"></i>
                                                    </div>
                                                </div>
                                                <!-- End product details -->
                                            </div> --%>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                           </c:forEach>                  
                        </div>
                       
                        <!-- 연관 상품들 슬라이드 영역 종료 -->
                        
                        </div>
                    <!--End Related Product Slider-->
                    
                    <!--Recently Product Slider-->
                    <div class="related-product grid-products">
                            <header class="section-header">
                                <h2 class="section-header__title text-center h2"><span style="color:white;" class="korean">최근 본 상품들</span></h2>
                                <p style="color:white;" class="sub-heading korean">기억에 남는 상품을 골라보세요</p>
                            </header>
                            <div class="productPageSlider">
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image6.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image6.jpg" alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image6-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image6-1.jpg" alt="image" title="product">
                                            <!-- End hover image -->
                                            <!-- product label -->
                                            <div class="product-labels rectangular"><span class="lbl on-sale">-16%</span> <span class="lbl pr-label1">new</span></div>
                                            <!-- End product label -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Zipper Jacket</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image7.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image7.jpg" alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image7-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image7-1.jpg" alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Zipper Jacket</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image8.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image8.jpg" alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image8-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image8-1.jpg" alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>

                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Workers Shirt Jacket</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image9.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image9.jpg" alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image9-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image9-1.jpg" alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Watercolor Sport Jacket in Brown/Blue</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image10.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image10.jpg" alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image10-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image10-1.jpg" alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Washed Wool Blazer</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image13.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image13.jpg" alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image13-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image13-1.jpg" alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>

                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Ashton Necklace</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image14.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image14.jpg" alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image14-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image14-1.jpg" alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Ara Ring</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                                <div class="col-12 item">
                                    <!-- start product image -->
                                    <div class="product-image">
                                        <!-- start product image -->
                                        <a href="#">
                                            <!-- image -->
                                            <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image15.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image15.jpg" alt="image" title="product">
                                            <!-- End image -->
                                            <!-- Hover image -->
                                            <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image15-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image15-1.jpg" alt="image" title="product">
                                            <!-- End hover image -->
                                        </a>
                                        <!-- end product image -->
                                    </div>
                                    <!-- end product image -->

                                    <!--start product details -->
                                    <div class="product-details text-center">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="#">Ara Ring</a>
                                        </div>
                                        <!-- End product name -->
                                    </div>
                                    <!-- End product details -->
                                </div>
                            </div>
                        </div>
                    <!--End Recently Product Slider-->
                    </div>
                <!--#ProductSection-product-template-->
            </div>
            <!--MainContent-->
        </div>
    	<!--End Body Content-->
    
    <!--Footer-->
    <footer id="footer">
        <div class="newsletter-section">
            <div class="container">
                <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-7 w-100 d-flex justify-content-start align-items-center">
                            <div class="display-table">
                                <div class="display-table-cell footer-newsletter">
                                    <div class="section-header text-center">
                                        <label class="h2"><span>sign up for </span>newsletter</label>
                                    </div>
                                    <form action="#" method="post">
                                        <div class="input-group">
                                            <input type="email" class="input-group__field newsletter__input" name="EMAIL" value="" placeholder="Email address" required="">
                                            <span class="input-group__btn">
                                                <button type="submit" class="btn newsletter__submit" name="commit" id="Subscribe"><span class="newsletter__submit-text--large">Subscribe</span></button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-5 d-flex justify-content-end align-items-center">
                            <div class="footer-social">
                                <ul class="list--inline site-footer__social-icons social-icons">
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Facebook"><i class="icon icon-facebook"></i></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Twitter"><i class="icon icon-twitter"></i> <span class="icon__fallback-text">Twitter</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Pinterest"><i class="icon icon-pinterest"></i> <span class="icon__fallback-text">Pinterest</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Instagram"><i class="icon icon-instagram"></i> <span class="icon__fallback-text">Instagram</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Tumblr"><i class="icon icon-tumblr-alt"></i> <span class="icon__fallback-text">Tumblr</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on YouTube"><i class="icon icon-youtube"></i> <span class="icon__fallback-text">YouTube</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Vimeo"><i class="icon icon-vimeo-alt"></i> <span class="icon__fallback-text">Vimeo</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
            </div>    
        </div>

    </footer>
    <!--End Footer-->
    <!--Scoll Top-->
    <span id="site-scroll"><i class="xi-long-arrow-up"></i></span>
    <!--End Scoll Top-->
    
    <div class="hide">
      <div id="sizechart">
        <h3 class="korean">여성 사이즈</h3>
        <table>
          <tbody>
            <tr>
              <th>Size</th>
              <th>XS</th>
              <th>S</th>
              <th>M</th>
              <th>L</th>
              <th>XL</th>
            </tr>
            <tr>
              <td>Chest</td>
              <td>31" - 33"</td>
              <td>33" - 35"</td>
              <td>35" - 37"</td>
              <td>37" - 39"</td>
              <td>39" - 42"</td>
            </tr>
            <tr>
              <td>Waist</td>
              <td>24" - 26"</td>
              <td>26" - 28"</td>
              <td>28" - 30"</td>
              <td>30" - 32"</td>
              <td>32" - 35"</td>
            </tr>
            <tr>
              <td>Hip</td>
              <td>34" - 36"</td>
              <td>36" - 38"</td>
              <td>38" - 40"</td>
              <td>40" - 42"</td>
              <td>42" - 44"</td>
            </tr>
            <tr>
              <td>Regular inseam</td>
              <td>30"</td>
              <td>30½"</td>
              <td>31"</td>
              <td>31½"</td>
              <td>32"</td>
            </tr>
            <tr>
              <td>Long (Tall) Inseam</td>
              <td>31½"</td>
              <td>32"</td>
              <td>32½"</td>
              <td>33"</td>
              <td>33½"</td>
            </tr>
          </tbody>
        </table>
        <h3 class="korean">남성 사이즈</h3>
        <table>
          <tbody>
            <tr>
              <th>Size</th>
              <th>XS</th>
              <th>S</th>
              <th>M</th>
              <th>L</th>
              <th>XL</th>
              <th>XXL</th>
            </tr>
            <tr>
              <td>Chest</td>
              <td>33" - 36"</td>
              <td>36" - 39"</td>
              <td>39" - 41"</td>
              <td>41" - 43"</td>
              <td>43" - 46"</td>
              <td>46" - 49"</td>
            </tr>
            <tr>
              <td>Waist</td>
              <td>27" - 30"</td>
              <td>30" - 33"</td>
              <td>33" - 35"</td>
              <td>36" - 38"</td>
              <td>38" - 42"</td>
              <td>42" - 45"</td>
            </tr>
            <tr>
              <td>Hip</td>
              <td>33" - 36"</td>
              <td>36" - 39"</td>
              <td>39" - 41"</td>
              <td>41" - 43"</td>
              <td>43" - 46"</td>
              <td>46" - 49"</td>
            </tr>
          </tbody>
        </table>
        <div style="padding-left: 30px;"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/size.jpg" alt=""></div>
      </div>
	</div>
    <div class="hide">
    	<div id="productInquiry">
        	<div class="contact-form form-vertical">
          <div class="page-title">
            <h3>Camelia Reversible Jacket</h3>
          </div>
          <form method="post" action="#" id="contact_form" class="contact-form">
            <input type="hidden" name="form_type" value="contact" />
            <input type="hidden" name="utf8" value="✓" />
            <div class="formFeilds">
              <input type="hidden"  name="contact[product name]" value="Camelia Reversible Jacket">
              <input type="hidden"  name="contact[product link]" value="/products/camelia-reversible-jacket-black-red">
              <div class="row">
                  <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                  	<input type="text" id="ContactFormName" name="contact[name]" placeholder="Name"  value="" required>
                  </div>
              </div>
              <div class="row">
                <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                  <input type="email" id="ContactFormEmail" name="contact[email]" placeholder="Email"  autocapitalize="off" value="" required>
                </div>
                <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                    <input required type="tel" id="ContactFormPhone" name="contact[phone]" pattern="[0-9\-]*" placeholder="Phone Number"  value="">
                </div>
              </div>
              <div class="row">
              	<div class="col-12 col-sm-12 col-md-12 col-lg-12">
              		<textarea required rows="10" id="ContactFormMessage" name="contact[body]" placeholder="Message" ></textarea>
              	</div>  
              </div>
              <div class="row">
              	<div class="col-12 col-sm-12 col-md-12 col-lg-12">
              		<input type="submit" class="btn" value="Send Message">
                </div>
             </div>
            </div>
          </form>
        </div>
      	</div>
    </div>
<!-- 바디 종료입니다 -->




































	<%@ include file="../include/footer.jsp"%>


































    
    


     <!-- 해당 페이지의 이벤트입니다 -->
     <script>
       $(function(){
            var $pswp = $('.pswp')[0],
                image = [],
                getItems = function() {
                    var items = [];
                    $('.lightboximages a').each(function() {
                        var $href   = $(this).attr('href'),
                            $size   = $(this).data('size').split('x'),
                            item = {
                                src : $href,
                                w: $size[0],
                                h: $size[1]
                            }
                            items.push(item);
                    });
                    return items;
                }
            var items = getItems();
        
            $.each(items, function(index, value) {
                image[index]     = new Image();
                image[index].src = value['src'];
            });
            $('.prlightbox').on('click', function (event) {
                event.preventDefault();
              
                var $index = $(".active-thumb").parent().attr('data-slick-index');
                $index++;
                $index = $index-1;
        
                var options = {
                    index: $index,
                    bgOpacity: 0.9,
                    showHideOpacity: true
                }
                var lightBox = new PhotoSwipe($pswp, PhotoSwipeUI_Default, items, options);
                lightBox.init();
            });
            
            
            
            
            
            /* ajax 굿즈리뷰 뿌려주는 부분 시작 (selectList) */
            $.ajax({
            	url:"${pageContext.request.contextPath}/goodsReview/${goods.gdsNum}",
            	type:"GET",
            	dataType:"json",
            	success : function(data){
            	/* 각 요소 확인 */
            	console.log("별점찍히나");
            	console.log(data.grCount);
            	for(const i in data){
            		let grNum = data[i].grNum; 
            		let grDate = data[i].grDate;
            		let grComment = data[i].grComment;
            		let grIsdelete = data[i].Isdelete;
            		let grTitle = data[i].grTitle;
            		let userNum = data[i].userNum;
            		let userName =  data[i].userName;
            		let grScore = data[i].grScore;
            	 	let grCount = data[i].grCount; 
            		console.log("평균평점:"+grCount);
            		
            		
            		let accountNumber = "${sessionScope.account.userNum}"; /* "~~~"로 큰 따옴표를 해주는 이유: 로그인이 안되어 있는 상태에서는 ; 에러가 발생해서 해당 코드 이하가 실행되지 않음 */
            		
            		
            		
            		const commentList = document.querySelector(".spr-reviews"); /* 리뷰를 담을 div 클래스 명 */
            		const reviewDiv = document.createElement("div"); /* 리뷰가 생성될 div */
            		/* const grCountDiv = document.getElementById("grCountDiv"); */ /* 리뷰 개수가 표시될 부분 */
            		
            		
            		
            		
            		
            		let listHtml = ""; /* 요소 생성 및 초기화 */
            		listHtml += " <div class='spr-review'>";
            		listHtml += "  <div class='spr-review-header'>";
            		listHtml += "<span class='product-review spr-starratings spr-review-header-starratings'>         <span style = 'color: rgb(255,149,0); font-size: 20px;' class='reviewLink"+grNum+"'> <i class='xi-star'></i>"+grScore+"  </span></span>";
            		listHtml += "<h3 id='updateGrTitle"+grNum+"' class='spr-review-header-title korean grTite"+grNum+"'>"+grTitle+"</h3>"; 
            		listHtml += "<span class='spr-review-header-byline'><strong id='updateUserName"+grNum+"' class='userName"+grNum+"'>"+userName+"</strong> 님이 <strong id='updateGrDate"+grNum+"' class='grDate"+grNum+"'>"+grDate+"</strong>에 작성함</span>";
            		listHtml += "</div>";
            		listHtml += "<div class='spr-review-content'>";
            		listHtml += "     <p id='updateGrComment"+grNum+"' class='spr-review-content-body korean grComment"+grNum+"'>"+grComment+"</p>";
            		listHtml += "</div>";
            		/* 리뷰 작성자가 일치할때만 수정, 삭제버튼이 나타난다 */
            		if(userNum == accountNumber){
            				listHtml +="<div id = 'replyBtn'>";
            				listHtml += "   <input type='hidden' id='grNum' name='grNum' value="+grNum+">"; /* 댓글 pk grNum을 가져온다 */
            			listHtml += "   <button style='margin: 5px' id='deleteBtn"+grNum+"' class='spr-summary-actions-newreview btn korean deleteBtn' >리뷰 삭제하기</button> ";
            				listHtml += "   <button style='margin: 5px'  class='spr-summary-actions-newreview btn korean updateBtn'>리뷰 수정하기</button> ";
            				listHtml +="</div>";
            		}
            	
            		listHtml += "</div>"; 
            		
            	
            		
            		
            		
            		/* grCountDiv.innerText = grCount; */
            		reviewDiv.innerHTML=listHtml; /* innerHTML로 생성될 댓글이 담긴 div를 넣어줌 */
            		commentList.append(reviewDiv); /* 리뷰를 담을 div 클래스 뒤에 붙여줌 */
            		
            		
            	}/* for문 종료 */
            	
            	
            	
            	
            	
            	/* 삭제 ajax작성 시작 */
            	$(".deleteBtn").click(function(){
				var replyNo = $(this).parent().find("#grNum").val();
				
				console.log(replyNo);/* 지워줄 게시물의 번호를 확인 */
				
				let deleteConfirm = confirm("삭제하시겠습니까?");
				let replyDiv = $(this).parent().parent(); /* 버튼을 클릭할때 지워질 요소를 선택 */
				
				if(deleteConfirm){ /* 삭제버튼을 클릭했을때 confirm의 yes를 클릭한다면 */
					let deleteData = {grNum: replyNo};
					
					/* 삭제 ajax 시작 */
					$.ajax({
						url:"${pageContext.request.contextPath}/goodsReview/delete",
						type: "DELETE",
						data: JSON.stringify(deleteData),
						contentType : "application/json; charset=utf-8",
						dataType : "html",
						success: function(data){
							console.log("삭제 성공"); /* 삭제 성공시에 콘솔 찍힘 */
							replyDiv.remove(); /* 댓글 전체 요소가 지워진다 */
							
						}
					});
						
					
					/* 삭제 ajax 종료 */
				};
				}); 
            	/* 삭제 ajax작성종료 */
            	
            	
            	/* 수정 ajax 작성 시작 */
            	$(".updateBtn").click(function(){
            		console.log("수정버튼을 클릭")
            		var replyNo = $(this).parent().find("#grNum").val();
            		
            		
    				
    				console.log(replyNo);/* 수정할 게시물의 번호를 확인 */
    				let updateConfirm = "수정하시겠습니까?";
    				const updateDiv =  document.createElement("div");
    				const update = $(this).parent().parent();
    				const updateBtn = $("#updateBtn");
    				
    				/* 수정 창 열기 */
				    let updateHtml = "";
				    updateHtml += ' <div id="new-review-form" class="new-review-form">';
				    updateHtml += '<h3 class="spr-form-title korean">리뷰 수정하기</h3>';
				    updateHtml += ' <fieldset class="spr-form-review">';
				    updateHtml += '<div class="spr-form-review-title" >';
				    updateHtml += '<label class="spr-form-label korean" for="review_title_10508262282">별점 </label>';
				    updateHtml += '<fieldset id="myform">';
				    /* 별점 클릭이 되도록 replyNo를 name끼리 일치하도록, id와 for가 일치하도록 작성한다 */
				    updateHtml += ' <input type="radio" name="'+replyNo+'ratingUpdate" value="5" id="'+replyNo+'rateUpdate5" class="rate"><label for="'+replyNo+'rateUpdate5">⭐</label>';
				    updateHtml += '<input type="radio" name="'+replyNo+'ratingUpdate" value="4" id="'+replyNo+'rateUpdate4" class="rate"><label for="'+replyNo+'rateUpdate4">⭐</label>';
				    updateHtml += '<input type="radio" name="'+replyNo+'ratingUpdate" value="3" id="'+replyNo+'rateUpdate3" class="rate"><label for="'+replyNo+'rateUpdate3">⭐</label>';
				    updateHtml += '<input type="radio" name="'+replyNo+'ratingUpdate" value="2" id="'+replyNo+'rateUpdate2" class="rate"><label for="'+replyNo+'rateUpdate2">⭐</label>';
				    updateHtml += '<input type="radio" name="'+replyNo+'ratingUpdate" value="1" id="'+replyNo+'rateUpdate1" class="rate"><label for="'+replyNo+'rateUpdate1">⭐</label>';
				    updateHtml += '</fieldset>';
				    updateHtml += '  </div>';
				    
				    
				    
				    
				    updateHtml += '<div class="spr-form-review-title">';
				    updateHtml += ' <label class="spr-form-label korean" for="review_title_10508262282">리뷰 제목</label>';
				    updateHtml += '<input class="spr-form-input spr-form-input-text korean" id="reviewTitle'+replyNo+'" type="text"  placeholder="리뷰 제목을 수정해주세요">';
				    updateHtml += '  </div>';
				    
				    
			        updateHtml += '<div class="spr-form-review-body">';
				    updateHtml += '<label class="spr-form-label korean" for="review_body_10508262282">리뷰 내용 <span class="spr-form-review-body-charactersremaining korean">(1500)자</span></label>';
				    updateHtml += '<div class="spr-form-input">';
					updateHtml += '<textarea class="spr-form-input spr-form-input-textarea korean" id="reviewContent'+replyNo+'"  rows="10" placeholder="리뷰를 수정해주세요"></textarea>';
					updateHtml += '</div>';
					updateHtml += '</div>';
					updateHtml += '</fieldset>';
					
					
					updateHtml += '<fieldset class="spr-form-actions">';
					updateHtml += '<button type="submit" class="spr-button spr-button-primary button button-primary btn btn-primary korean" id="reviewUpdate'+replyNo+'" >리뷰 수정하기</button>';
					updateHtml += '</fieldset>';
					updateHtml += '</div>';
					/* updateHtml 종료 */
					updateDiv.innerHTML=updateHtml;
					update.append(updateDiv);
					/* updateHtml 수정 창 종료  */
					
					/* 연달아 수정버튼을 클릭하지 않도록 제거 */
					$(this).attr("disabled", true);
					
					
					
					/* 수정하기 버튼을 누르면 일어나는 이벤트 */
					$("#reviewUpdate"+replyNo).click(function(){

						/* 받아줘야할 데이터 변수 입력 */
						let grComment = $("#reviewContent"+replyNo).val();
		        		let grTitle = $("#reviewTitle"+replyNo).val();
		        		let grDate = moment(new Date).format('YYYY년MM월DD일');
		        		let chkGrScore = document.getElementsByName(replyNo+'ratingUpdate');
		        		let grScore;
		        		let grNum = replyNo;
		        		
		        		
		        		for(var i =0; i < chkGrScore.length; i++){
		        			if(chkGrScore[i].checked){
		        				grScore = chkGrScore[i].value;
		        			}
		        		}
		        		/* 변수 입력 확인 */
		        		console.log(grScore);
		        		console.log(grComment);
		        		console.log(grTitle);
		        		console.log(grDate);
		        		console.log(grNum);
		        		/* 변수 입력 완료 */
		        		
		        		if(grComment.length > 0){
		        			let updateData = {grComment, grTitle, grScore, grDate, grNum};
		        			/* 데이터 잘 받는지 확인 */
		        			console.log(updateData);
		        			
		        			
		        			/* 수정 ajax 실행 */
		        			$.ajax({
		        				url:"${pageContext.request.contextPath}/goodsReview/update",
		        				type: "PATCH",
		        				data: JSON.stringify(updateData),
		        				contentType : "application/json; charset=utf-8",
								dataType : "json",
								success: function(data){
									alert("수정 완료되었습니다");
									updateDiv.remove();
									console.log(data.grTitle);
									/* 기능이 막혀있던 버튼의 기능을 다시 활성화 시킴 */
									$(".updateBtn").attr("disabled", false);
									
									
									
									
									 
									 
									let grTitleDiv = document.getElementById("updateGrTitle"+grNum);
									let userNameDiv = document.getElementById("updateUserName"+grNum);
									let grDateDiv = document.getElementById("updateGrDate"+grNum);
									let grCommentDiv = document.getElementById("updateGrComment"+grNum); 
									/* let grScoreDiv = document.getElementByClassName("reviewLink"+grNum); */
									 
									
									
								
									
								 	
									
									grTitleDiv.innerText = data.grTitle;
									userNameDiv.innerText = data.userName;
									grDateDiv.innerText = data.grDate;
									grCommentDiv.innerText = data.grComment;
									grScoreDiv.innerText = data.grScore;
								
									
									
								}
		        			});
		        		};
		        		
					});
					
					
					
					
					
					
	        		
	        		
					
            	});
            	
            	
            	
            	
            	
            	
            	}
            	
            })
            
            
            
            
            
            
            
              /* ajax 굿즈리뷰 뿌려주는 부분 종료 (selectList) */
            
            
            
            /* ajax 굿즈리뷰 입력부분 시작*/
            
         	$("#reviewSubmit").click(function(){
        		let grComment = $("#reviewContent").val();
        		let grTitle = $("#reviewTitle").val();
        		let chkGrScore = document.getElementsByName('rating');
        		let grScore;
        		let grDate = moment(new Date).format('YYYY년MM월DD일');
;
        		
        		for(var i =0; i < chkGrScore.length; i++){
        			if(chkGrScore[i].checked){
        				grScore = chkGrScore[i].value;
        			}
        		}
        	
         	
        		
        		
        		if(grComment.length > 0){
        			let commentData = {grComment, grTitle, grScore, grDate, gdsNum: "${goods.gdsNum}"};
        			/* console.log(commentData); */
        			
        	 		$.ajax({
        				url:"${pageContext.request.contextPath}/goodsReview/insertgrReview",
        				type: "POST",
        				data: JSON.stringify(commentData),
        				contentType : "application/json; charset=utf-8",
        				dataType:"json",
        				success: function(data){
        					/* alert("입력 성공"); */
        		/* 데이터를 담아줄 요소 생성 */
        		const commentList = document.querySelector(".spr-reviews"); /* 리뷰를 담을 div 클래스 명 */
        		const reviewDiv = document.createElement("div"); /* 리뷰가 생성될 div */
        		
        	
        		/* 새로 생성된 게시물을 수정하기 위해서는 유저 번호, 상품 번호로 수정한다 */
        		let userNum = data.userNum;
        		let gdsNum = data.gdsNum;
        		
        		console.log("작성자번호:");
        		console.log(data.userNum);
        		console.log("상품번호:")
        		console.log(data.gdsNum);
        		
        		
        		
        		let listHtml = ""; /* 요소 생성 및 초기화 */
        		listHtml += " <div class='spr-review'>";
        		listHtml += "  <div class='spr-review-header'>";
        		listHtml += "<span class='product-review spr-starratings spr-review-header-starratings'>         <span class='reviewLink' style = 'color: rgb(255,149,0); font-size: 20px;'> <i class='xi-star'></i>"+data.grScore+" </span></span>";
        		listHtml += "<h3 class='spr-review-header-title korean'>"+data.grTitle+"</h3>"; 
        		listHtml += "<span class='spr-review-header-byline'><strong>"+data.userName+"</strong> 님이 <strong>"+data.grDate+"</strong>에 작성함</span>";
        		listHtml += "</div>";
        		listHtml += "<div class='spr-review-content'>";
        		listHtml += "     <p class='spr-review-content-body korean'>"+data.grComment+"</p>";
        		listHtml += "</div>";
        		
        	
    				listHtml +="<div id = 'replyBtn'>";
    				listHtml += "   <input type='hidden' id='grNum' name='grNum' value="+userNum+">"; 
    				listHtml += "   <button style='margin: 5px' id='deleteBtn"+userNum+"' class='spr-summary-actions-newreview btn korean deleteBtn' >리뷰 삭제하기</button> ";
    				listHtml += "   <button style='margin: 5px'  class='spr-summary-actions-newreview btn korean updateBtn'>리뷰 수정하기</button> ";
    				listHtml +="</div>";
    		
    			
        		 	listHtml += "</div>"; 
        	
        		
        		
        		
        
        		
        		reviewDiv.innerHTML=listHtml; /* innerHTML로 생성될 댓글이 담긴 div를 넣어줌 */
        		commentList.append(reviewDiv); /* 리뷰를 담을 div 클래스 뒤에 붙여줌 */
        		$("p").innerText=data.grComment;
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		
        		/* 수정버튼에 대한 이벤트 ajax 시작 */
        		$(".updateBtn").click(function(){
            		console.log("수정버튼을 클릭")
            		var replyNo = $(this).parent().find("#grNum").val();
            		
            		
    				
    				console.log(replyNo);/* 수정할 게시물의 번호를 확인 */
    				let updateConfirm = "수정하시겠습니까?";
    				const updateDiv =  document.createElement("div");
    				const update = $(this).parent().parent();
    				const updateBtn = $("#updateBtn");
    				
    				/* 수정 창 열기 */
				    let updateHtml = "";
				    updateHtml += ' <div id="new-review-form" class="new-review-form">';
				    updateHtml += '<h3 class="spr-form-title korean">리뷰 수정하기</h3>';
				    updateHtml += ' <fieldset class="spr-form-review">';
				    updateHtml += '<div class="spr-form-review-title" >';
				    updateHtml += '<label class="spr-form-label korean" for="review_title_10508262282">별점 </label>';
				    updateHtml += '<fieldset id="myform">';
				    /* 별점 클릭이 되도록 replyNo를 name끼리 일치하도록, id와 for가 일치하도록 작성한다 */
				    updateHtml += ' <input type="radio" name="'+userNum+'ratingUpdate" value="5" id="'+userNum+'rateUpdate5" class="rate"><label for="'+userNum+'rateUpdate5">⭐</label>';
				    updateHtml += '<input type="radio" name="'+userNum+'ratingUpdate" value="4" id="'+userNum+'rateUpdate4" class="rate"><label for="'+userNum+'rateUpdate4">⭐</label>';
				    updateHtml += '<input type="radio" name="'+userNum+'ratingUpdate" value="3" id="'+userNum+'rateUpdate3" class="rate"><label for="'+userNum+'rateUpdate3">⭐</label>';
				    updateHtml += '<input type="radio" name="'+userNum+'ratingUpdate" value="2" id="'+userNum+'rateUpdate2" class="rate"><label for="'+userNum+'rateUpdate2">⭐</label>';
				    updateHtml += '<input type="radio" name="'+userNum+'ratingUpdate" value="1" id="'+userNum+'rateUpdate1" class="rate"><label for="'+userNum+'rateUpdate1">⭐</label>';
				    updateHtml += '</fieldset>';
				    updateHtml += '  </div>';
				    
				    
				    
				    
				    updateHtml += '<div class="spr-form-review-title">';
				    updateHtml += ' <label class="spr-form-label korean" for="review_title_10508262282">리뷰 제목</label>';
				    updateHtml += '<input class="spr-form-input spr-form-input-text korean" id="reviewTitle'+userNum+'" type="text"  placeholder="리뷰 제목을 수정해주세요">';
				    updateHtml += '  </div>';
				    
				    
			        updateHtml += '<div class="spr-form-review-body">';
				    updateHtml += '<label class="spr-form-label korean" for="review_body_10508262282">리뷰 내용 <span class="spr-form-review-body-charactersremaining korean">(1500)자</span></label>';
				    updateHtml += '<div class="spr-form-input">';
					updateHtml += '<textarea class="spr-form-input spr-form-input-textarea korean" id="reviewContent'+userNum+'"  rows="10" placeholder="리뷰를 수정해주세요"></textarea>';
					updateHtml += '</div>';
					updateHtml += '</div>';
					updateHtml += '</fieldset>';
					
					
					updateHtml += '<fieldset class="spr-form-actions">';
					updateHtml += '<button type="submit" class="spr-button spr-button-primary button button-primary btn btn-primary korean" id="reviewUpdate'+userNum+'" >리뷰 수정하기</button>';
					updateHtml += '</fieldset>';
					updateHtml += '</div>';
					/* updateHtml 종료 */
					updateDiv.innerHTML=updateHtml;
					update.append(updateDiv);
					/* updateHtml 수정 창 종료  */
					
					/* 연달아 수정버튼을 클릭하지 않도록 제거 */
					$(this).attr("disabled", true);
					
					
					
					/* 수정하기 버튼을 누르면 일어나는 이벤트 */
					$("#reviewUpdate"+replyNo).click(function(){

						/* 받아줘야할 데이터 변수 입력 */
						let grComment = $("#reviewContent"+replyNo).val();
		        		let grTitle = $("#reviewTitle"+replyNo).val();
		        		let grDate = moment(new Date).format('YYYY년MM월DD일');
		        		let chkGrScore = document.getElementsByName(replyNo+'ratingUpdate');
		        		let grScore;
		        		let grNum = replyNo;
		        		
		        		
		        		for(var i =0; i < chkGrScore.length; i++){
		        			if(chkGrScore[i].checked){
		        				grScore = chkGrScore[i].value;
		        			}
		        		}
		        		/* 변수 입력 확인 */
		        		console.log(grScore);
		        		console.log(grComment);
		        		console.log(grTitle);
		        		console.log(grDate);
		        		console.log(grNum);
		        		/* 변수 입력 완료 */
		        		
		        		if(grComment.length > 0){
		        			let updateData = {grComment, grTitle, grScore, grDate, grNum};
		        			/* 데이터 잘 받는지 확인 */
		        			console.log(updateData);
		        			
		        			
		        			/* 수정 ajax 실행 */
		        			$.ajax({
		        				url:"${pageContext.request.contextPath}/goodsReview/update",
		        				type: "PATCH",
		        				data: JSON.stringify(updateData),
		        				contentType : "application/json; charset=utf-8",
								dataType : "json",
								success: function(data){
									alert("수정 완료되었습니다");
									updateDiv.remove();
									console.log(data.grTitle);
									/* 기능이 막혀있던 버튼의 기능을 다시 활성화 시킴 */
									$(".updateBtn").attr("disabled", false);
									
									
									
									
									 
									 
									let grTitleDiv = document.getElementById("updateGrTitle"+grNum);
									let userNameDiv = document.getElementById("updateUserName"+grNum);
									let grDateDiv = document.getElementById("updateGrDate"+grNum);
									let grCommentDiv = document.getElementById("updateGrComment"+grNum); 
									/* let grScoreDiv = document.getElementByClassName("reviewLink"+grNum); */
									 
									
									
								
									
								 	
									
									grTitleDiv.innerText = data.grTitle;
									userNameDiv.innerText = data.userName;
									grDateDiv.innerText = data.grDate;
									grCommentDiv.innerText = data.grComment;
									grScoreDiv.innerText = data.grScore;
								
									
									
								}
		        			});
		        		};
		        		
					});
					/* 수정버튼에 대한 이벤트 종료 ajax */
					
					
					
					
					
	        		
	        		
					
            	});
        		
        		
        		
        				}
        			});
        		
        		}
        	});
        	/* 굿즈 입력 종료 */
            
        
            
            
        });


        </script>
        <!-- 해당 페이지의 이벤트 종료입니다 -->
    </div>

	<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
        	<div class="pswp__bg"></div>
            <div class="pswp__scroll-wrap"><div class="pswp__container"><div class="pswp__item"></div><div class="pswp__item"></div><div class="pswp__item"></div></div><div class="pswp__ui pswp__ui--hidden"><div class="pswp__top-bar"><div class="pswp__counter"></div><button class="pswp__button pswp__button--close" title="Close (Esc)"></button><button class="pswp__button pswp__button--share" title="Share"></button><button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button><button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button><div class="pswp__preloader"><div class="pswp__preloader__icn"><div class="pswp__preloader__cut"><div class="pswp__preloader__donut"></div></div></div></div></div><div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap"><div class="pswp__share-tooltip"></div></div><button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button><button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button><div class="pswp__caption"><div class="pswp__caption__center"></div></div></div></div></div>

    <!-- 제이쿼리, 자바스크립트 시작입니다 -->
     <!-- Including Jquery -->
<%--      <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/jquery-3.3.1.min.js"></script> --%>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/jquery.cookie.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/modernizr-3.6.0.min.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/wow.min.js"></script>
     <!-- Including Javascript -->
   <%--   <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/bootstrap.min.js"></script> --%>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/plugins.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/popper.min.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/lazysizes.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/main.js"></script>
     <!-- Photoswipe Gallery -->
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/photoswipe.min.js"></script>
     <script src="${pageContext.request.contextPath }/assets/js/GoodsMainjs/vendor/photoswipe-ui-default.min.js"></script>
     <!-- 제이쿼리, 자바스크립트 종료입니다 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>









</body>

</html>