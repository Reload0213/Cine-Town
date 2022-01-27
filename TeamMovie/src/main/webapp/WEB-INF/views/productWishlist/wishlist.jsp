<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
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
            <h3>${sessionScope.account.userName}님의 굿즈 찜 목록</h3>
            <p>마음에 드시는 영화의 굿즈를 찜 해보세요</p>
  
                <form:form modelAttribute="productWishlistVO"  id="orderform"  class="orderform" >

                <input type="hidden" name="cmd" value="order">
                <div class="basketdiv " id="basket">
                    <div class="row head">
                        <div class="subdiv text-center">
                            <div class="check">선택</div>
                        
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
					<c:forEach var="row" items="${list }">
					
                    <div class="row head">
                        <div class="subdiv">
                            <div class="check"><input type="checkbox" name="buy" value="260" checked=""
                                    onclick="javascript:basket.checkItem();">&nbsp;</div>
                         
                            <div class="pname">
                                <span>${row.gdsName }</span>
                            </div>
                        </div>
                        <div class="subdiv">
                            <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price"
                                    value="${row.gdsPrice }">${row.gdsPrice }원</div>


                        </div>
                        <div class="subdiv">
                        
                            <div class="basketcmd">
                
                                    <a class="abutton" href="${pageContext.request.contextPath }/productWishlist/deleteProductWishlistItem?pwishNum=${row.pwishNum}">삭제</a>
                                    </div>
                                    
                        </div>
                    </div>
                  
                    </c:forEach>
                    
          
                </div>
                <div class="right-align basketrowcmd">
                    <a href="javascript:void(0)" class="abutton"
                        onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
                
                </div>
         
            </form:form>
        </div>
    </section>



	<%@ include file="../include/footer.jsp" %>

    <!--현 페이지 스크립트-->
    <script src="${pageContext.request.contextPath}/assets/js/cart/jquery-migrate-3.0.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/cart/jquery.stellar.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/cart/aos.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/cart/main.js"></script>
    <!--현 페이지 스크립트-->
    
    <script type="text/javascript">
    
    </script>
</body>

</html>