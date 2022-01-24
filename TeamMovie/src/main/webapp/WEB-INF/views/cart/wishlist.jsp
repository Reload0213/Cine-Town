<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<htm>
<!-- 페이지 작성자 김정민 -->
<head>
    <!--현 페이지 소스-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/cart/style.css">
    <!--현 페이지 소스-->

</head>

<body>
	<%@ include file="../include/header.jsp" %>

    <section class="ftco-section ftco-cart">
        <div class="container">
            <h3>${sessionScope.userId}님의 굿즈 찜 목록</h3>
            <p>마음에 드시는 영화의 굿즈를 찜 해보세요</p>
            <form name="orderform" id="orderform" method="post" class="orderform" action="/Page"
                onsubmit="return false;">

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

                        </div>
                        <div class="subdiv">

                            <div class="basketcmd">삭제</div>
                        </div>
                        <div class="split"></div>
                    </div>

                    <div class="row head">
                        <div class="subdiv">
                            <div class="check"><input type="checkbox" name="buy" value="260" checked=""
                                    onclick="javascript:basket.checkItem();">&nbsp;</div>
                            <!-- <div class="img"><img src="assets/images/cart/about.jpg" width="60"></div> -->
                            <div class="pname">
                                <span>도르마무의 타임머신 기계</span>
                            </div>
                        </div>
                        <div class="subdiv">
                            <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price"
                                    value="20000">20,000원</div>


                        </div>
                        <div class="subdiv">
                            <div class="basketcmd"><a href="javascript:void(0)" class="abutton"
                                    onclick="javascript:basket.delItem();">삭제</a></div>
                        </div>
                    </div>
                    <div class="row head">
                        <div class="subdiv">
                            <div class="check"><input type="checkbox" name="buy" value="261" checked=""
                                    onclick="javascript:basket.checkItem();">&nbsp;</div>

                            <div class="pname">
                                <span>TD-38 스타워즈 광선검</span>
                            </div>
                        </div>
                        <div class="subdiv">
                            <div class="basketprice"><input type="hidden" name="p_price" id="p_price2" class="p_price"
                                    value="19000">19,000원</div>
                        </div>
                        <div class="subdiv">
                            <div class="basketcmd"><a href="javascript:void(0)" class="abutton"
                                    onclick="javascript:basket.delItem();">삭제</a></div>
                        </div>
                    </div>
                    <div class="row head">
                        <div class="subdiv">
                            <div class="check"><input type="checkbox" name="buy" value="261" checked=""
                                    onclick="javascript:basket.checkItem();">&nbsp;</div>

                            <div class="pname">
                                <span>오징어 게임 달고나 만들기 세트</span>
                            </div>
                        </div>
                        <div class="subdiv">
                            <div class="basketprice"><input type="hidden" name="p_price" id="p_price2" class="p_price"
                                    value="19000">19,000원</div>
                        </div>
                        <div class="subdiv">
                            <div class="basketcmd"><a href="javascript:void(0)" class="abutton"
                                    onclick="javascript:basket.delItem();">삭제</a></div>
                        </div>
                    </div>

                </div>
                <div class="right-align basketrowcmd">
                    <a href="javascript:void(0)" class="abutton"
                        onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
                    <!-- <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a> -->
                </div>
            </form>
        </div>
    </section>



	<%@ include file="../include/footer.jsp" %>

    <!--현 페이지 스크립트-->
    <script src="${pageContext.request.contextPath}/assets/js/cart/jquery-migrate-3.0.1.min.js"></script>
    <scrFipt src="${pageContext.request.contextPath}/assets/js/cart/jquery.stellar.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/cart/aos.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/cart/main.js"></script>
    <!--현 페이지 스크립트-->
</body>

</html>