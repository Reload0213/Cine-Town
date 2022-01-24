<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 페이지 작성자 김정민 -->
<head>

<!--현 페이지 소스-->
<link rel="stylesheet"
	href=" https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<!-- <link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"> -->
<style>
body {
	background-color: #eee;
	font-family: "Poppins", sans-serif;
	font-weight: 300
}

.cart {
	/* height: 100vh */
	
}

.progresses {
	display: flex;
	align-items: center
}

.line {
	width: 76px;
	height: 6px;
	background: #63d19e
}

.steps {
	display: flex;
	background-color: #63d19e;
	color: #fff;
	font-size: 12px;
	width: 30px;
	height: 30px;
	align-items: center;
	justify-content: center;
	border-radius: 50%
}

.check1 {
	display: flex;
	background-color: #63d19e;
	color: #fff;
	font-size: 17px;
	width: 60px;
	height: 60px;
	align-items: center;
	justify-content: center;
	border-radius: 50%;
	margin-bottom: 10px
}

.invoice-link {
	font-size: 15px
}

.order-button {
	height: 50px
}

.background-muted {
	background-color: #fafafc
}

footer a {
	text-decoration: none;
}
</style>
<!--현 페이지 소스-->



</head>

<body>



	<%@ include file="../include/header.jsp"%>


	<section class="ftco-section">
		<div class="container mt-4 mb-4">
			<div
				class="row d-flex cart align-items-center justify-content-center">
				<div class="col-md-10">
					<div class="card">

						<div class="row g-0">
							<div class="col-md-6 border-right p-5">
								<div class="text-center order-details">
									<div
										class="d-flex justify-content-center mb-5 flex-column align-items-center">
										<span class="check1"><i class="xi-check"></i></span> <span
											class="font-weight-bold">주문이 완료되었습니다</span> <small
											class="mt-2">고객님의 상품을 안전하고 신속히 배송해 드리겠습니다. </br>오늘도 행복한 하루
											되세요
										</small>
									</div>
									<button class="btn btn-danger btn-block order-button">주문내역
										보기</button>
									<!--주문 내역 누르면 내 정보의 주문 리스트들 보기-->
								</div>
							</div>
							<div class="col-md-6 background-muted">
								<div class="p-3 border-bottom">
									<div class="d-flex justify-content-between align-items-center">
										<span style="font-style: italic;"><i
											class="xi-time-o text-muted"></i> 3 영업일 내 도착 보장</span> <span
											style="font-style: italic;"><i
											class="xi-renew text-muted"></i> 무료 환불 가능</span>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<span>주문일: <span id="current_date"></span></span>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<span>운송장번호: <span id="current_date1"></span>-<span
											id="rand"></span></span>
									</div>
									<div class="mt-3">
										<h6 class="mb-0">00님의 주문 내역입니다</h6>
										<div class="d-flex flex-column mt-3">
											<small><i class="xi-check text-muted"></i> 스파이더맨 거미줄
												요술 세트</small> <small><i class="xi-check text-muted"></i>
												알라딘의 양탄자 도둑 세트</small>
										</div>
									</div>
								</div>

								<div class="row g-0 border-bottom">
									<div class="noco" style="display: flex; flex-direction: row;">
										<div class="col-md-6">
											<div
												class="p-3 d-flex justify-content-center align-items-center">
												<span>상품합계</span>
											</div>
										</div>
										<div class="col-md-6">
											<div
												class="p-3 d-flex justify-content-center align-items-center">
												<span>40000원</span>
											</div>
										</div>
									</div>
									<div class="noco" style="display: flex; flex-direction: row;">
										<div class="col-md-6">
											<div
												class="p-3 d-flex justify-content-center align-items-center">
												<span>배송비</span>
											</div>
										</div>
										<div class="col-md-6">
											<div
												class="p-3 d-flex justify-content-center align-items-center">
												<span>2500원</span>
											</div>
										</div>
									</div>
									<div class="noco" style="display: flex; flex-direction: row;">
										<div class="col-md-6">
											<div
												class="p-3 d-flex justify-content-center align-items-center">
												<span>할인</span>
											</div>
										</div>
										<div class="col-md-6">
											<div
												class="p-3 d-flex justify-content-center align-items-center">
												<span>2000원</span>
											</div>
										</div>
									</div>
									<div class="noco" style="display: flex; flex-direction: row;">
										<div class="col-md-6">
											<div
												class="p-3 d-flex justify-content-center align-items-center">
												<span class="font-weight-bold">총합</span>
											</div>
										</div>
										<div class="col-md-6">
											<div
												class="p-3 d-flex justify-content-center align-items-center">
												<span class="font-weight-bold">40,500원</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</section>




	<%@ include file="../include/footer.jsp"%>






	<!--현 페이지 스크립트-->
	<script>
		date = new Date();
		year = date.getFullYear();
		let month = date.getMonth() + 1;
		let day = date.getDate();
		let hour = date.getHours();
		let minute = date.getMinutes();
		let second = date.getSeconds();
		month = month >= 10 ? month : '0' + month;
		day = day >= 10 ? day : '0' + day;
		hour = hour >= 10 ? hour : '0' + hour;
		minute = minute >= 10 ? minute : '0' + minute;
		second = second >= 10 ? second : '0' + second;

		document.getElementById("current_date").innerHTML = year + "년 " + month
				+ "월 " + day + "일 " + hour + ':' + minute + ':' + second;
		document.getElementById("current_date1").innerHTML = year + "" + month
				+ "" + day;

		// 운송장 번호. 오늘날짜 2022134+
		document.getElementById("rand").innerText = Math
				.floor(Math.random() * 99) + 1;
	</script>
	<!--현 페이지 스크립트-->
</body>

</html>