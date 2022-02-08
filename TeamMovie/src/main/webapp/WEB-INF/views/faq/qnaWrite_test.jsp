<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 	<form:form modelAttribute="qnaVO" action="${pageContext.request.contextPath}/aboutUs/writeQna" method="GET">
		<table>
			<tr>
				<td>내용</td>
				<td>
					<form:input path="qnaComment"/>
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
					<form:input path="qnaTitle"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="등록" />
				</td>
			</tr>		
		</table>
	</form:form> 
		
</body>
</html>