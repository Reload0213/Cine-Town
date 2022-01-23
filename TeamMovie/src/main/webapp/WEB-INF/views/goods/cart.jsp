<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--페이지 작성자 김정민
굿즈에 상품 추가, 배송비, 쿠폰 -->
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--현 페이지 소스-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/cart/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/cart/style.css">
<!--현 페이지 소스-->
</head>

<body>

	<%@ include file="../include/header.jsp"%>

	<section class="ftco-section ftco-cart">
		<div class="container">
			<h5 style="font-family: Verdana, Geneva, Tahoma, sans-serif">
				<span style="font-weight: bold;">${sessionScope}</span>님의 장바구니
			</h5>
			<p>영화가 마음에 드셨나요? 저희 CGV에서 관련 굿즈를 구매해 보세요</p>
			<form name="orderform" id="orderform" method="post" class="orderform"
				action="/Page" onsubmit="return false;">

				<input type="hidden" name="cmd" value="order">
				<div class="basketdiv " id="basket">
					<div class="row head">
						<div class="subdiv text-center">
							<div class="check">선택</div>
							<!-- <div class="img">이미지</div> -->
							<div class="pname">상품명</div>
						</div>
						<div class="subdiv">
							<div class="basketprice">가격</div>
							<div class="num">수량</div>
							<div class="sum">합계</div>
						</div>
						<div class="subdiv">
							<div class="basketcmd">삭제</div>
						</div>
						<div class="split"></div>
					</div>
					<div class="row head ">
						<div class="subdiv">
							<div class="check">
								<input type="checkbox" name="buy" value="260" checked=""
									onclick="javascript:basket.checkItem();">&nbsp;
							</div>
							<!-- <div class="img"><img src="assets/images/cart/about.jpg" width="60"></div> -->
							<div class="pname">
								<a href="goods/GoodsMain"><span>스타워즈 광선검</span></a>
							</div>
						</div>
						<div class="subdiv">
							<div class="basketprice">
								<input type="hidden" name="p_price" id="p_price1"
									class="p_price" value="20000">20,000원
							</div>
							<div class="num">
								<div class="updown">
									<span onclick="javascript:basket.changePNum(1);"><i
										class="xi-caret-down-circle-o down"></i></span> <input type="text"
										name="p_num1" id="p_num1" size="2" maxlength="4"
										class="p_num " value="2"
										onkeyup="javascript:basket.changePNum(1);"> <span
										onclick="javascript:basket.changePNum(1);"><i
										class="xi-caret-up-circle-o up"></i></span>

								</div>
							</div>
							<div class="sum">40,000원</div>
						</div>
						<div class="subdiv">
							<div class="basketcmd">
								<a href="javascript:void(0)" class="abutton"
									onclick="javascript:basket.delItem();">삭제</a>
							</div>
						</div>
					</div>
					<div class="row head ">
						<div class="subdiv">
							<div class="check">
								<input type="checkbox" name="buy" value="261" checked=""
									onclick="javascript:basket.checkItem();">&nbsp;
							</div>

							<div class="pname">
								<a href="goods/GoodsMain"><span>오징어 게임 VIP 초대권</span></a>
							</div>
						</div>
						<div class="subdiv">
							<div class="basketprice">
								<input type="hidden" name="p_price" id="p_price2"
									class="p_price" value="19000">19,000원
							</div>
							<div class="num">
								<div class="updown">
									<span onclick="javascript:basket.changePNum(1);"><i
										class="xi-caret-down-circle-o down"></i></span> <input type="text"
										name="p_num1" id="p_num1" size="2" maxlength="4"
										class="p_num " value="2"
										onkeyup="javascript:basket.changePNum(1);"> <span
										onclick="javascript:basket.changePNum(1);"><i
										class="xi-caret-up-circle-o up"></i></span>
								</div>
							</div>
							<div class="sum">19,000원</div>
						</div>
						<div class="subdiv">
							<div class="basketcmd">
								<a href="javascript:void(0)" class="abutton"
									onclick="javascript:basket.delItem();">삭제</a>
							</div>
						</div>
					</div>
					<div class="row head ">
						<div class="subdiv">
							<div class="check">
								<input type="checkbox" name="buy" value="262" checked=""
									onclick="javascript:basket.checkItem();">&nbsp;
							</div>

							<div class="pname">
								<a href="goods/GoodsMain"><span>스타트랙 승선권</span></a>
							</div>
						</div>
						<div class="subdiv">
							<div class="basketprice">
								<input type="hidden" name="p_price" id="p_price3"
									class="p_price" value="15200">15,200원
							</div>
							<div class="num">
								<div class="updown">
									<span onclick="javascript:basket.changePNum(1);"><i
										class="xi-caret-down-circle-o down"></i></span> <input type="text"
										name="p_num1" id="p_num1" size="2" maxlength="4"
										class="p_num " value="7"
										onkeyup="javascript:basket.changePNum(1);"> <span
										onclick="javascript:basket.changePNum(1);"><i
										class="xi-caret-up-circle-o up"></i></span>

								</div>
							</div>
							<div class="sum">15,200원</div>
						</div>
						<div class="subdiv">
							<div class="basketcmd">
								<a href="javascript:void(0)" class="abutton"
									onclick="javascript:basket.delItem();">삭제</a>
							</div>
						</div>
					</div>

				</div>
				<div class="right-align basketrowcmd">
					<a href="javascript:void(0)" class="abutton"
						onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
					<!-- <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a> -->
				</div>
				<div class="row justify-content-end">
					<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
						<div class="cart-total mb-3">
							<h3>할인 코드를 입력해주세요</h3>
							<form action="#" class="info">
								<div class="form-group">
									<label for="">코드 적용</label> <input type="text"
										class="form-control text-left px-3" placeholder="">
								</div>
							</form>
						</div>
						<p style="text-align: end;">
							<a href="checkout.html" class="btn btn-primary py-3 px-4">코드
								적용</a>
						</p>
					</div>

					<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
						<div class="cart-total mb-3">
							<h3>Cart Totals</h3>
							<p class="d-flex">
								<span>합계금액</span> <span id="sum_p_price">74,200원</span>
							</p>
							<p class="d-flex">
								<span>상품갯수</span> <span id="sum_p_num">4개</span>
							</p>
							<p class="d-flex">
								<span>배송비</span> <span>2500원</span>
							</p>

							<p class="d-flex">
								<span>할인</span> <span>1000원</span>
							</p>
							<hr>
							<p class="d-flex total-price">
								<span>합계금액</span> <span id="sum_p_price">74,200원</span>

							</p>
						</div>
						<p style="text-align: end;">
							<a href="${pageContext.request.contextPath}/goods/goodsCheckout"
								class="btn btn-primary py-3 px-4">주문하기</a>
						</p>
					</div>
				</div>
			</form>
		</div>
	</section>

	<%@ include file="../include/footer.jsp"%>


	<!--현 페이지 스크립트-->
	<script
		src="${pageContext.request.contextPath}/assets/js/cart/jquery-migrate-3.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/cart/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/cart/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/cart/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/cart/scrollax.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/cart/aos.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/cart/main.js"></script>
	<!--현 페이지 스크립트-->
</body>

</html>