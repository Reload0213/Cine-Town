<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgb(250, 246, 21); /* 마우스 클릭 체크 */
}

/* 별점 디자인 종료 */    
  
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
                                            <div class="product-review"><a class="reviewLink" href="#tab2"><i class="font-13 fa xi-star-o"></i><i class="font-13 fa xi-star-o"></i><i class="font-13 fa xi-star-o"></i><i class="font-13 fa xi-star-o"></i><i class="font-13 fa xi-star-o"></i><span class="spr-badge-caption">6 reviews</span></a></div>
                                        </div>
                                        <p class="product-single__price product-single__price-product-template">
                                            <span class="visually-hidden">Regular price</span>
                                            <s id="ComparePrice-product-template"><span class="money korean">600.00원</span></s>
                                            <span class="product-price__price product-price__price-product-template product-price__sale product-price__sale--single">
                                                <span id="ProductPrice-product-template"><span class="money korean">${goods.gdsPrice }원</span></span>
                                            </span>
                                            <span class="discount-badge"> <span class="devider">|</span>&nbsp;
                                                <span class="korean">할인</span>
                                                <span id="SaveAmount-product-template" class="product-single__save-amount">
                                                <span class="money">$100.00</span>
                                                </span>
                                                <span class="off">(<span>16</span>%)</span>
                                            </span>  
                                        </p>
                                        <div class="orderMsg" data-user="23" data-time="24">
                                            <img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/order-icon.jpg" alt="" /> <strong class="items">5</strong> sold in last <strong class="time">26</strong> hours</div>
                                        </div>
                                    <div class="product-single__description rte">
                                        <ul>
                                            <li>${goods.gdsDetail }</li>
                                            <li>Sed ut perspiciatis unde omnis iste natus error sit</li>
                                            <li>Neque porro quisquam est qui dolorem ipsum quia dolor</li>
                                            <li>Lorem Ipsum is not simply random text.</li>
                                        </ul>
                                        <p>2. 상품 상세 설명입니다</p>
                                    </div>
                                    <div id="quantity_message">서두르세요! 재고가  <span class="items">${goods.gdsStock }</span>  개 남았습니다.</div>
                                    
                                    
                                    
                                    <!-- 주문 / 위시리스트 폼 양식 -->
                                 <%--    <form method="post" action="http://annimexweb.com/cart/add" id="product_form_10508262282" accept-charset="UTF-8" class="product-form product-form-product-template hidedropdown" enctype="multipart/form-data"> --%>
                                    <form:form action="${pageContext.request.contextPath }/cart/insertCartItem" modelAttribute="cartVO" id="product_form_10508262282"  class="product-form product-form-product-template hidedropdown">
                                    <form:hidden path="userNum" value="${sessionScope.account.userNum }"/>
                                    <form:hidden path="gdsNum" value="${goods.gdsNum }"/>
                                        <div class="swatch clearfix swatch-0 option1" data-option-index="0">
                                            <div class="product-form__item">
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
                                            </div>
                                        </div>
                                        <div class="swatch clearfix swatch-1 option2" data-option-index="1">
                                            <div class="product-form__item">
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
                                            </div>
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
                                                <form:button type="submit" name="add" class="btn product-form__cart-submit">
                                                    <span>장바구니에 담기</span>
                                                    </form:button>
                                        <!--         </button> -->
                                            </div>
                                            <div class="shopify-payment-button" data-shopify="payment-button">
                                               <!--  <button type="button" class="shopify-payment-button__button shopify-payment-button__button--unbranded">바로 구매하기</button> -->
                                                <form:button type="submit" class="shopify-payment-button__button shopify-payment-button__button--unbranded">바로 구매하기</form:button>
                                            </div>
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
                                        
                                    <p id="freeShipMsg" class="freeShipMsg" data-price="199"><i class="fa fa-truck" aria-hidden="true"></i> GETTING CLOSER! ONLY <b class="freeShip"><span class="money" data-currency-usd="$199.00" data-currency="USD">$199.00</span></b> AWAY FROM <b>FREE SHIPPING!</b></p>
                                    <p class="shippingMsg"><i class="fa fa-clock-o" aria-hidden="true"></i> ESTIMATED DELIVERY BETWEEN <b id="fromDate">Wed. May 1</b> and <b id="toDate">Tue. May 7</b>.</p>
                                    <div class="userViewMsg" data-user="20" data-time="11000"><i class="fa fa-users" aria-hidden="true"></i> <strong class="uersView">14</strong> PEOPLE ARE LOOKING FOR THIS PRODUCT</div>
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
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                                    <ul>
                                      <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
                                      <li>Sed ut perspiciatis unde omnis iste natus error sit</li>
                                      <li>Neque porro quisquam est qui dolorem ipsum quia dolor</li>
                                      <li>Lorem Ipsum is not simply random text.</li>
                                      <li>Free theme updates</li>
                                    </ul>
                                    <h3>Sed ut perspiciatis unde omnis iste natus error sit voluptatem</h3>
                                    <p>You can change the position of any sections such as slider, banner, products, collection and so on by just dragging and dropping.&nbsp;</p>
                                    <h3>Lorem Ipsum is not simply random text.</h3>
<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>
                                    <p>Change colors, fonts, banners, megamenus and more. Preview changes are live before saving them.</p>
                                    <h3>1914 translation by H. Rackham</h3>
                                    <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>
                                    <h3>Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC</h3>
                                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                                    <h3>The standard Lorem Ipsum passage, used since the 1500s</h3>
                                    <p>You can use variant style from colors, images or variant images. Also available differnt type of design styles and size.</p>
                                    <h3>Lorem Ipsum is not simply random text.</h3>
<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>
                                    <h3>Proin ut lacus eget elit molestie posuere.</h3>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.</p>
                                </div>
                            </div>
                            
                            <div id="tab2" class="tab-content">
                                <div id="shopify-product-reviews">
                                    <div class="spr-container">
                                        <div class="spr-header clearfix">
                                            <div class="spr-summary">
                                                <span class="product-review"><a class="reviewLink"><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star-o"></i><i class="font-13 fa fa-star-o"></i> </a><span class="spr-summary-actions-togglereviews korean"> <span>6</span> 개의 후기가 작성됨</span></span>
                                                <span class="spr-summary-actions">
                                                    <a href="#" class="spr-summary-actions-newreview btn korean">리뷰 작성하기</a>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="spr-content">
                                            <div class="spr-form clearfix">
                                              <%--   <form method="post" action="#" id="new-review-form" class="new-review-form"> --%>
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
                                            
                                            
                                            
                                            <div class="spr-reviews">
                                            
                                            
                                                <div class="spr-review">
                                                    <div class="spr-review-header">
                                                        <span class="product-review spr-starratings spr-review-header-starratings"><span class="reviewLink"><i class="fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i></span></span>
                                                        <h3 class="spr-review-header-title korean">제품 리뷰 한글 영역 테스트입니다. 하단 날짜는 영어로 갑니다</h3>
                                                        <span class="spr-review-header-byline"><strong>dsacc</strong> on <strong>Apr 09, 2019</strong></span>
                                                    </div>
                                                    <div class="spr-review-content">
                                                        <p class="spr-review-content-body korean">해당 영역은 제품 리뷰 내용입니다. 한글 테스트입니다.</p>
                                                    </div>
                                                </div>
                                                
                                                
                                                <div class="spr-review">
                                                  <div class="spr-review-header">
                                                    <span class="product-review spr-starratings spr-review-header-starratings"><span class="reviewLink"><i class="fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i></span></span>
                                                    <h3 class="spr-review-header-title">Lorem Ipsum is simply dummy text of the printing</h3>
                                                    <span class="spr-review-header-byline"><strong>larrydude</strong> on <strong>Dec 30, 2018</strong></span>
                                                  </div>
                                            
                                                  <div class="spr-review-content">
                                                    <p class="spr-review-content-body">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                                                    </p>
                                                  </div>
                                                </div>
                                                
                                                
                                                <div class="spr-review">
                                                  <div class="spr-review-header">
                                                    <span class="product-review spr-starratings spr-review-header-starratings"><span class="reviewLink"><i class="fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i><i class="font-13 fa fa-star"></i></span></span>
                                                    <h3 class="spr-review-header-title">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...</h3>
                                                    <span class="spr-review-header-byline"><strong>quoctri1905</strong> on <strong>Dec 30, 2018</strong></span>
                                                  </div>
                                            
                                                  <div class="spr-review-content">
                                                    <p class="spr-review-content-body">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.<br>
                                                    <br>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                                  </div>
                                                </div>
                                                
                                                
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
                                <p class="korean">Interdum et malesuada fames ac ante ipsum primis in faucibus. In blandit nunc enim, sit amet pharetra erat aliquet ac.</p>
                                <h4 class="korean">배송</h4>
                                <p class="korean">배송관련 내용입니다</p>
                            </div>
                        </div>
                    </div>
                    <!--End Product Tabs-->
                    
                    <!--Related Product Slider-->
                    <div class="related-product grid-products">
                        <header class="section-header">
                            <h2 class="section-header__title text-center h2"><span class="korean">연관 상품들</span></h2>
                            <p class="sub-heading korean">다양한 영화의 굿즈를 만나보세요</p>
                        </header>
                        <div class="productPageSlider">
                            <div class="col-12 item">
                                <!-- start product image -->
                                <div class="product-image">
                                    <!-- start product image -->
                                    <a href="#">
                                        <!-- image -->
                                        <img class="primary blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image1.jpg" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="hover blur-up lazyload" data-src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image1-1.jpg" src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/product-image1-1.jpg" alt="image" title="product">
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
                                        <a href="#">Edna Dress</a>
                                    </div>
                                    <!-- End product name -->
                                    <!-- product price -->
                                    <div class="product-price">
                                        <span class="old-price">$500.00</span>
                                        <span class="price">$600.00</span>
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
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant1.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant2.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant3.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant4.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant5.jpg" alt="image" /></li>
                                        <li class="swatch medium rounded"><img src="${pageContext.request.contextPath }/assets/images/GoodsMainimages/product-images/variant6.jpg" alt="image" /></li>
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
                                            </div>
                        </div>
                        </div>
                    <!--End Related Product Slider-->
                    
                    <!--Recently Product Slider-->
                    <div class="related-product grid-products">
                            <header class="section-header">
                                <h2 class="section-header__title text-center h2"><span class="korean">최근 본 상품들</span></h2>
                                <p class="sub-heading korean">You can manage this section from store admin as describe in above section</p>
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
            
            
            
            /* ajax 굿즈리뷰 입력부분 */
            
         	$("#reviewSubmit").click(function(){
        		let grComment = $("#reviewContent").val();
        		let grTitle = $("#reviewTitle").val();
        		let chkGrScore = document.getElementsByName('rating');
        		let grScore;
        		
        		for(var i =0; i < chkGrScore.length; i++){
        			if(chkGrScore[i].checked){
        				grScore = chkGrScore[i].value;
        			}
        		}
        	
         	
        		
        		
        		if(grComment.length > 0){
        			let commentData = {grComment, grTitle, grScore, gdsNum: "${goods.gdsNum}"};
        			console.log(commentData);
        			
        	 		$.ajax({
        				url:"${pageContext.request.contextPath}/goodsReview/insertgrReview",
        				type: "POST",
        				data: JSON.stringify(commentData),
        				contentType : "application/json; charset=utf-8",
        				success: function(data){
        					alert("입력 성공");
        				}
        			}) 
        		}
        	})
            
            
            
            
        });
        /* -------------------------------------------------------------------------------------------------------- */
 /*        $(function(){ 데이터 삽입
        
        	$("#reivewSubmit").click(function(){
        		let grComment = $("#reviewContent").val();
        		let grTitle = $("#reviewTitle").val();
        		let grScore = $(".rate").val();
        		
        		if(grComment>0){
        			let commentData = {grComment, grTitle, grScore, gdsNum: "${goods.gdsNum}"};
        			console.log(commentData);
        		}
        	});
        }); */
        </script>
        <!-- 해당 페이지의 이벤트 종료입니다 -->
    </div>

	<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
        	<div class="pswp__bg"></div>
            <div class="pswp__scroll-wrap"><div class="pswp__container"><div class="pswp__item"></div><div class="pswp__item"></div><div class="pswp__item"></div></div><div class="pswp__ui pswp__ui--hidden"><div class="pswp__top-bar"><div class="pswp__counter"></div><button class="pswp__button pswp__button--close" title="Close (Esc)"></button><button class="pswp__button pswp__button--share" title="Share"></button><button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button><button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button><div class="pswp__preloader"><div class="pswp__preloader__icn"><div class="pswp__preloader__cut"><div class="pswp__preloader__donut"></div></div></div></div></div><div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap"><div class="pswp__share-tooltip"></div></div><button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button><button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button><div class="pswp__caption"><div class="pswp__caption__center"></div></div></div></div></div>

</body>

</html>