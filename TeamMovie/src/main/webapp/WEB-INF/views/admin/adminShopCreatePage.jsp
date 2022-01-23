<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Saurav">
<link href="${pageContext.request.contextPath }/assets/css/adminShopCreatePageCss/bootstrap.min.css" rel="stylesheet">
<title>Responsive Registration Form Template</title>

</head>
<body class="bg-light">

<div class="container">
  <div class="py-5 text-center">

    <h2>관리자 상품 등록 페이지입니다</h2>
  </div>
 </div>

 <form action="">
<div class="container">
  <div class="row">
    <div class="col-md-12">
    
<!--      <form> -->
   
     
    <div class="form-group">
    <label for="exampleInputEmail1">상품이름</label>
    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="상품 이름을 입력해주세요" aria-describedby="emailHelp">
  
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">상품가격 </label>
    <input type="number" class="form-control" id="address" placeholder="가격을 입력해주세요" required>
 
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">상품 상세정보 </label>
    <textarea class="form-control" id="address" name="gdsDetail" id="gdsDetail" cols="10" rows="5" placeholder="상품 상세정보를 입력해주세요"></textarea>
    
 
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">상품재고량 </label>
    <input type="number" class="form-control" id="address" placeholder="상품 재고량을 입력해주세요" required>
 
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">상품사진 주소 </label>
    <input type="text" class="form-control" id="address" placeholder="상품 사진 주소를 절대경로에 맞게 입력해주세요" required>
 
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">상품삭제 여부 </label>
    <input type="text" class="form-control" id="address" placeholder="Y 또는 N 으로 입력해주세요" required>
 
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">상품 브랜드 </label>
    <input type="text" class="form-control" id="address" placeholder="상품 브랜드를 입력해주세요" required>
 
  </div>




  <div class="form-group">
  

  </div>
 
 
          
    
      
    
  <button type="submit" class="btn btn-primary btn-lg btn-block">상품 등록하기</button>

    </div>
  </div>
  </div>
  </form>

<!--   </div> -->

</body>
</html>