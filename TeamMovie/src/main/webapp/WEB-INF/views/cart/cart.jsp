<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  
    

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
      <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <style>     
        .bloc_left_price {
            color: #c01508;
            text-align: center;
            font-weight: bold;
            font-size: 150%;
        }

        .category_block li:hover {
            background-color: #007bff;
        }

        .category_block li:hover a {
            color: #ffffff;
        }

        .category_block li a {
            color: #343a40;
        }

        .add_to_cart_block .price {
            color: #c01508;
            text-align: center;
            font-weight: bold;
            font-size: 200%;
            margin-bottom: 0;
        }

        .add_to_cart_block .price_discounted {
            color: #343a40;
            text-align: center;
            text-decoration: line-through;
            font-size: 140%;
        }

        .product_rassurance {
            padding: 10px;
            margin-top: 15px;
            background: #ffffff;
            border: 1px solid #6c757d;
            color: #6c757d;
        }

        .product_rassurance .list-inline {
            margin-bottom: 0;
            text-transform: uppercase;
            text-align: center;
        }

        .product_rassurance .list-inline li:hover {
            color: #343a40;
        }

        .reviews_product .fa-star {
            color: gold;
        }

        .pagination {
            margin-top: 20px;
        }

        footer {
            background: #343a40;
            padding: 40px;
        }

        footer a {
            color: #f8f9fa !important
        }

        .form-control {
             width: 2.3rem; 
		
            text-overflow: hidden;
            font-size: 0.5rem;

        }

        .contrlBtn {
            display: flex;
            flex-direction: column;
        }

        .contrlBtn i {
            font-size: 1.3rem;
            color: #141414;
            margin-bottom: -0.25rem;
        }

        .contrlBtn img {
            width: 1.1rem;

        }

        .tdFlexCon {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100px;
        }
    </style>
    <!------ Include the above in your HEAD tag ---------->
</head>

<body>





   <%@ include file="../include/header.jsp" %>




<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">E-COMMERCE CART</h1>
     </div>
</section>






<c:choose>
<c:when test="${map.count == 0}">
 <div class="container mb-4">
        <div class="row">
            <div class="col-12">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col"> </th>
                                <th scope="col">?????????</th>
                                <th scope="col">????????????</th>
                                <th scope="col" class="text-center">??????</th>
                                <th scope="col" class="text-right">??????</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                       
                      
                    
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>????????????</td>
                                <td class="text-right"><span class="middleTotal">0</span>???</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>?????????</td>
                                <td class="text-right"><span class="postPrice">0</span>???</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><strong>??? ????????????</strong></td>
                                <td class="text-right"><strong class="totalPrice">0</strong>???</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col mb-2">
                <div class="row">
                    <div class="col-sm-12  col-md-6">
                        <button class="btn btn-block btn-light">?????? ????????????</button>
                    </div>
                    <div class="col-sm-12 col-md-6 text-right">
                        <button class="btn btn-lg btn-block btn-success text-uppercase">?????? ????????? ??????</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</c:when>
<c:otherwise>
 <div class="container mb-4">
        <div class="row">
            <div class="col-12">
                <div class="table-responsive">
                <form:form modelAttribute="cartVO" action="${pageContext.request.contextPath }/cart/updateCartItem">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col"> </th>
                                <th scope="col">?????????</th>
                                <th scope="col">????????????</th>
                                <th scope="col" class="text-center">??????</th>
                                <th scope="col" class="text-right">??????</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                           		
                        <c:forEach var="row"  items="${map.list }">
                     		<c:if test="${row.cartIsdelete == N }">
                  
                            <tr class="goodsTr" data-price="${row.gdsPrice }">
                                <td><img src="${row.gdsImage1 }" width="70px" /> 
                                <form:hidden path="gdsNum" value="${row.gdsNum }"/>
                                <form:hidden path="cartNum" value="${row.cartNum }"/>
                                </td>
                                <td>${row.gdsName}</td>
                                <td>????????????</td>
                                <td class="tdFlexCon">
                           <%--      <input class="form-control" type="number" data-amount="${row.cartAmount }" value="${row.cartAmount }" /> --%>
                                <form:input path="cartAmount" class="form-control" type="text" data-amount="${row.cartAmount }" value="${row.cartAmount }"/>
                                <span
                                        class="contrlBtn"><img class="quantityUpBtn" src="${pageContext.request.contextPath}/assets/images/cart/btn_count_up.gif"
                                            alt=""><img class="quantityDownBtn" src="${pageContext.request.contextPath}/assets/images/cart/btn_count_down.gif"
                                            alt=""></span></td>
                                <td class="text-right"> <span class="goodsTotalVw"></span> 
                               </td>
                                <td class="text-right">
                        
                               <a class="btn btn-sm btn-danger deleteGoods" href="${pageContext.request.contextPath }/cart/deleteCartItem?cartNum=${row.cartNum}"><i class="xi-trash"></i> </a> 
                   
                                
                                </td>
                            </tr>
                       
                            </c:if>
                         </c:forEach>
                           <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                <form:button type="submit" class="btn btn-lg btn-block btn-success text-uppercase">
                                ?????? ??????
                                </form:button>
                                </td>
                            </tr>
                     
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>????????????</td>
                                <td class="text-right"><span class="middleTotal">0</span>???</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>?????????</td>
                                <td class="text-right"><span class="postPrice">0</span>???</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><strong>??? ????????????</strong></td>
                                <td class="text-right"><strong class="totalPrice">0</strong>???</td>
                            </tr>
                        </tbody>
                    </table>
                    </form:form>
                    
                </div>
            </div>
            <div class="col mb-2">
                <div class="row">
                    <div class="col-sm-12  col-md-6">
                        <button class="btn btn-block btn-light">?????? ????????????</button>
                    </div>
                    <div class="col-sm-12 col-md-6 text-right">
                        <button class="btn btn-lg btn-block btn-success text-uppercase">?????? ????????? ??????</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</c:otherwise>
</c:choose>
  

	<%@ include file="../include/footer.jsp" %>



   

    <script>
        // ??????????????? ????????? ??????

        //?????? ?????????
        let arr1 = [];
        let upBtn = document.querySelectorAll(".quantityUpBtn");
        let downBtn = document.querySelectorAll(".quantityDownBtn");
        let goodsTrs = document.querySelectorAll(".goodsTr");
        let input = document.querySelectorAll(".form-control");
        let middleVw = document.querySelector(".middleTotal");
        let middleTotal = 0;
        let postVw = document.querySelector(".postPrice");
        let post = 2500;
        let totalVw = document.querySelector(".totalPrice");
        let total = 0;
        let goodsTotalVw = document.querySelectorAll(".goodsTotalVw");
        let deleteGoodsBtn = document.querySelectorAll(".deleteGoods");



        //???????????? ???????????? ???????????? ?????? 
        window.onload = function () {
        	




            for (let i = 0; i < goodsTrs.length; i++) {
                arr1.push({
                    order: i,
                    quantity: parseInt(input[i].dataset.amount), //int ???????????? ?????????
                    price: goodsTrs[i].dataset.price,
            	
                });
		


                // ?????? 1??????????????? ??? ?????? ????????? ?????? ?????????
                goodsTotalVw[i].innerHTML = arr1[i].price * arr1[i].quantity;



                middleTotal += arr1[i].quantity * arr1[i].price;
                middleVw.innerHTML = middleTotal;

                total = middleTotal + post;
                totalVw.innerHTML = total;




                //?????? ?????? ?????? ?????????

                upBtn[i].addEventListener("click", function () {
                	console.log(typeof(arr1[i].quantity));

                   arr1[i].quantity += 1;
                     console.log(arr1[i].quantity);
                     
                    if (arr1[i].quantity > 99) {
                        alert("?????? ?????? ????????? 99??? ?????????.");
                        return false;
                    }
                        
                    input[i].value = arr1[i].quantity;


                    goodsTotalVw[i].innerHTML = arr1[i].price * arr1[i].quantity;

                    middleTotal += arr1[i].price * 1;


                    middleVw.innerHTML = middleTotal;


                    //10?????? ???????????? ???????????????
                    if (middleTotal >= 100000) {

                        post = 0;
                        postVw.innerHTML = post;
                    } else {
                        post = 2500;
                        postVw.innerHTML = post;
                    }


                    postVw.innerHTML = post;




                    total = post + middleTotal;
                    totalVw.innerHTML = total;












                });


                  //?????? ?????? ?????? ?????????


                downBtn[i].addEventListener("click", function () {

                    arr1[i].quantity -= 1;
                    console.log(arr1[i].quantity);
                    goodsTotalVw[i].innerHTML = arr1[i].price * arr1[i].quantity;
                    if (arr1[i].quantity == 0) {
                        alert("?????? ?????? ????????? 1??? ?????????.");
                      
                        //  input[i].value=0;
                         
                        //  middleTotal-=1*arr1[i].price;
                        //   if( middleTotal<100000){
                        //       post=2500;
                        //   }
                        //   total=middleTotal+post;

                        //   middleVw.innerHTML = middleTotal;
                        //   postVw.innerHTML=post;
                        //   totalVw.innerHTML=total;
                        arr1[i].quantity=1;
                        input[i].value=1;

                        goodsTotalVw[i].innerHTML=arr1[i].price * arr1[i].quantity;




                     
                        

                        return false;

                    }


                    input[i].value = arr1[i].quantity;


                    middleTotal += arr1[i].price * -1;
                    middleVw.innerHTML = middleTotal;


                    if (middleTotal >= 100000) {

                        post = 0;
                        postVw.innerHTML = post;
                    } else {
                        post = 2500;
                        postVw.innerHTML = post;
                    }


                    postVw.innerHTML = post;

                    total = middleTotal + post;


                    totalVw.innerHTML = total;



                    //    console.log(arr1[i].quantity);



                });



                // ?????? tr ?????? ???

                deleteGoodsBtn[i].addEventListener("click", function () {

                  /*   this.parentElement.parentElement.remove(); */

                    middleTotal -= arr1[i].quantity * arr1[i].price;

                    if (middleTotal < 100000) {
                        post = 2500;
                    }

                    total = middleTotal + post;
                    postVw.innerHTML = post;

                    middleVw.innerHTML = middleTotal;
                    totalVw.innerHTML = total;









                    arr1[i].quantity = 0;


                    console.log(arr1[i].quantity);



                });




             



            }

























        }
    </script>











    <!--header&footer script-->
    <script src="assets/js/headerFooter/jquery-3.3.1.min.js"></script>
    <script src="assets/js/headerFooter/bootstrap.min.js"></script>

</body>

</html>