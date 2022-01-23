<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>CodePen - Custom CSS Table Structure</title>

<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
</head><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/foundation/6.2.3/foundation.min.css'>
<link rel='stylesheet' href='https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css'>
<link rel='stylesheet' href='https://cdn.datatables.net/responsive/2.1.0/css/responsive.dataTables.min.css'>
<link rel='stylesheet' href='https://code.getmdl.io/1.3.0/material.blue-light_blue.min.css'><link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/adminShopCRUDPage/style.css">
</head>
<body>
 <body>
    <h1>관리자 상품 CRUD 페이지입니다.</h1>
    <p>Search창에서는 상품이름으로 검색합니다</p>
<table id="fantasyTable" class="display responsive no-wrap order-column" width="100%">
<thead>
  <tr>
    <th>상품번호</th>
    <th>상품이름</th>
    <th>상품코드</th>
    <th>상품 상세설명</th>
    <th>상품 가격</th>
    <th>상품 수량</th>
    <th>수정</th>
    <th>삭제</th>
  </tr>
 </thead>
  <tr>
    <td>1</td>
    <td>RALOS COMFORT, INC.</td>
    <td>CA</td>
    <td>CHATSWORTH</td>
    <td>113</td>
    <td>2</td>
    <td><button>수정</button></td>
    <td><button>삭제</button></td>
  </tr>
  <tr>
    <td>2</td>
    <td>한글제품입니다</td>
    <td>CA</td>
    <td>CHATSWORTH</td>
    <td>113</td>
    <td>2</td>
    <td><button>수정</button></td>
    <td><button>삭제</button></td>
  </tr>
  <tr>
    <td>1</td>
    <td>RALOS COMFORT, INC.</td>
    <td>CA</td>
    <td>CHATSWORTH</td>
    <td>113</td>
    <td>2</td>
    <td><button>수정</button></td>
    <td><button>삭제</button></td>
  </tr>
 
</table>
<!-- partial -->
  <script src='https://code.jquery.com/jquery-3.1.1.min.js'></script>
<script src='https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js'></script>
<!-- 해당 경로만 바꿔주시면 됩니다. -->
<script src='https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js'></script><script  src="${pageContext.request.contextPath }/assets/js/adminShopCRUDPage/script.js"></script>
  </body>
</html>


