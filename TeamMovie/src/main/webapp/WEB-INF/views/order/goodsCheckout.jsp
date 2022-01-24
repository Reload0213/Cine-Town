<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js">
<!-- 페이지 작성자 김정민 -->
<head>
<!--현 페이지 소스-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/cart/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/cart/style.css">
<!--현 페이지 소스-->



</head>

<body>


	<%@ include file="../include/header.jsp"%>


	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-7 ftco-animate">
					<form action="#" class="billing-form">
						<h3 class="mb-4 billing-heading">배송 정보</h3>
						<div class="row align-items-end">
							<div class="col-md-6">
								<div class="form-group">
									<label for="name">이름</label> <input type="text"
										class="form-control" placeholder="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="phone">전화번호</label> <input type="tel"
										class="form-control" placeholder="">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="country">국가명</label>
									<div class="select-wrap">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="" id="" class="form-control">
											<option value="">France</option>
											<option value="">Italy</option>
											<option value="">Philippines</option>
											<option value="" selected>South Korea</option>
											<option value="">Hongkong</option>
											<option value="">Japan</option>
										</select>
									</div>
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="streetaddress">주소</label> <input type="text"
										class="form-control" placeholder="도로명주소">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="상세주소">
								</div>
							</div>



							<div class="col-md-6">
								<div class="form-group">
									<label for="emailaddress">이메일</label> <input type="email"
										class="form-control" placeholder="">
								</div>
							</div>

						</div>
					</form>
					<!-- END -->
				</div>
				<div class="col-xl-5">
					<div class="row mt-5 pt-3">
						<div class="col-md-12 d-flex mb-5">
							<div class="cart-detail cart-total p-3 p-md-4">
								<h3 class="billing-heading mb-4">Cart Total</h3>
								<p class="d-flex">
									<span>상품</span> <span>합계</span>
								</p>
								<p class="d-flex" style="font-size: 70%; font-style: italic;">
									<span>신데렐라 거울</span> <span>10,000원</span>
								</p>
								<p class="d-flex" style="font-size: 70%; font-style: italic;">
									<span>스파이더맨 가방</span> <span>30,000원</span>
								</p>

								<hr>
								<p class="d-flex">
									<span>상품합계</span> <span>40,000원</span>
								</p>
								<p class="d-flex">
									<span>배송비</span> <span>2500원</span>
								</p>
								<p class="d-flex">
									<span>할인</span> <span>2000원</span>
								</p>
								<hr>
								<p class="d-flex total-price">
									<span>총합</span> <span>40,500원</span>
								</p>
							</div>
						</div>
						<div class="col-md-12">
							<div class="cart-detail p-3 p-md-4">
								<h3 class="billing-heading mb-4">결제 방법</h3>
								<div class="form-group">
									<div class="col-md-12">
										<div class="radio">
											<label><input type="radio" name="optradio"
												class="mr-2"> 카드 결제</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<div class="radio">
											<label><input type="radio" name="optradio"
												class="mr-2"> 무통장 입금</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<div class="radio">
											<label><input type="radio" name="optradio"
												class="mr-2"> 카카오 페이</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<div class="checkbox">
											<label><input type="checkbox" value="" class="mr-2">결제에
												동의합니다</label>
										</div>
									</div>
								</div>
								<p>
									<a href="${pageContext.request.contextPath}/goods/orderFinish"
										class="btn btn-primary py-3 px-4">주문하기</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- .col-md-8 -->
			</div>
		</div>
	</section>
	<!-- .section -->


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