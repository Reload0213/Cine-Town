<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 	<form:form modelAttribute="noticeVO" action="${pageContext.request.contextPath}/aboutUs/writeNotice">
		<table>
			<tr>
				<td>작성일</td>
				<td>
					<form:input path="noticeRegdate"/>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<form:input path="noticeComment"/>
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
					<form:input path="noticeTitle"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="등록" />
				</td>
			</tr>		
		</table>
	</form:form> --%>
	
	
	
	
	<form action="${pageContext.request.contextPath}/aboutUs/writeNotice" id="noticeWrite" name="noticeWrite" method="POST">
			<div>
				<h2>글쓰기</h2>
				<div>
					<table>
						<tr>
							<th>제목</th>
							<td><input style="width: 500px" id="noticeTitle" name="noticeTitle" /></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea style="width: 500px" rows="10" cols="10"
									id="noticeComment" name="noticeComment"></textarea></td>
						</tr>
						<tr>
							<th>작성시간</th>
							<td><input style="width: 500px" id="noticeRegdate" name="noticeRegdate" /></td>
						</tr>
					</table>
					<div>
						<button id="submit" type="submit">작성</button>
					</div>
				</div>
			</div>
		</form>
	
	
	
	
	
	
</body>
</html>