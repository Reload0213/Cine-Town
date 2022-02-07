<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<!-- 페이지 작성자 김정민 -->
<head>
<!--현 페이지 소스-->
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminMainPage/adminMainPage.css">
 --%>
<!--현 페이지 소스-->
<style>
.usercommentWrapper {
	text-align: center;
	margin: 50px auto;
	text-align: center;
	min-height: 50vh;
}

.userTable {
	display: flex;
	justify-content: center;
	display: flex;
	margin: 30px auto;
}

table {
	width: 70%;
}

button {
	
}

thead {
	background-color: #eee;
}

th, td {
	padding: 10px 0;
}

.xi-star {
	color: orange;
}

.usercommentWrapper a {
	color: black !important;
	cursor: pointer;
}

@media ( max-width :600px) {
	table {
		width: 95%;
	}
}
</style>
</head>

<body>
	<%@ include file="../include/header.jsp"%>

	<div class="usercommentWrapper">
		<div class="resultTitle">
			<h3>${sessionScope.account.userName }님의댓글내역</h3>
		</div>

		<div class="userTable">
			<table border=1>
				<thead>
					<th>영화 타이틀</th>
					<th>영화 별점</th>
					<th>댓글 내용</th>
					<th>작성일</th>
					<th>수정</th>
					<th>삭제</th>
				</thead>

				<c:forEach var="comments" items="${nList}">
					<tr>
						<td><a
							href="${pageContext.request.contextPath}/movie/movieDetail?mvNum=${comments.mvNum}">${comments.mvNum}</a></td>
						<td><span class="xi-star"></span>${comments.rpStar}</td>
						<td>${comments.rpComment}</td>
						<td>${comments.rpDate}</td>
						<td><a class="comment_modifyBtn" data-num="${comments.rpNum}"><i
								class="xi-pen" style="color: black; font-size: 1.8rem;"></i></a></td>
						<td><a class="comment_deleteBtn" data-num="${comments.rpNum}"><i
								class="xi-close " style="color: black; font-size: 1.8rem;"></i></a></td>
					</tr>


				</c:forEach>
			</table>
		</div>
	</div>


	<%@ include file="../include/footer.jsp"%>


	<!--현 페이지 스크립트-->
	<script type="text/javascript">
	
		// 내가 쓴 댓글 삭제
		let deleteBtn = document.querySelectorAll(".comment_deleteBtn");
		let updateBtn =  document.querySelectorAll(".comment_modifyBtn");
		
		
		$(function() {

			//같은 deleteBtn 여러개
			for (let i = 0; i < deleteBtn.length; i++) {

				// 각 deleteBtn
				deleteBtn[i]
						.addEventListener(
								"click",
								function() {
									 								
									let yn = confirm("댓글을 삭제하시겠습니까?");

									if (yn) {
                                                let rpNum=parseInt(this.dataset.num);
                                                let result_data={rpNum};                       
										        let thisobj=this;
                                               
												$.ajax({

													url : "${pageContext.request.contextPath}/user/commentDelete",
													type : "DELETE",
													data:JSON.stringify(result_data),
													contentType : "application/json; charset=utf-8",
													
													success : function(data) {
														 thisobj.parentElement.parentElement.remove();
													}
												});
									}

								});

			}
			
		});
		
		//댓글 상세 내역으로 가기
	    for(let i=0; i<updateBtn.length; i++){
		    	  updateBtn[i].addEventListener("click",function(){
		    		  let updateBtnVal=parseInt(this.dataset.num);
		    		  
		    		  
		    		  location.href="${pageContext.request.contextPath}/user/commentDetail?rpNum="+updateBtnVal;
		    	  });
		    	  
		     
		      }
	</script>
	<!--현 페이지 스크립트-->
</body>

</html>