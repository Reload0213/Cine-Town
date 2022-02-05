<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 관리자페이지 게시판에서 AJAX로 보여줄 화면 -->
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>카테고리</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성일</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
		<!-- 공지사항 게시판 검색 시(selBoard = 1) -->
		<c:if test="${selBoard eq '1'}">
			<!-- 공지사항 리스트에 데이터가 있을 경우 -->
			<c:if test="${fn:length(nList) > 0}">
				<c:forEach var="list" items="${nList }">
					<tr>
						<td>${list.noticeNum }</td>
						<td>${list.noticeCategory }</td>
						<td><a style="color: #141414; font-size: 15px;" href="${pageContext.request.contextPath}/aboutUs/noticeView?noticeNum=${list.noticeNum }">${list.noticeTitle }</a></td>
						<td>${list.noticeComment }</td>
						<td>${list.noticeRegdate }</td>
						<td>
							<button class="delete">삭제하기</button>
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<!-- 공지사항 리스트에 데이터가 없는 경우 -->
			<c:if test="${fn:length(nList) <= 0}">
				<tr style="height: 100px;">
					<td colspan="6">검색 결과가 없습니다.</td>
				</tr>
			</c:if>
		</c:if>
		
		<!-- QnA 게시판 검색 시(selBoard = 2) -->
		<c:if test="${selBoard eq '2'}">
			<!-- QnA 리스트에 데이터가 있을 경우 -->
			<c:if test="${fn:length(qList) > 0}">
				<c:forEach var="list" items="${qList }">
					<tr>
						<td>${list.qnaNum }</td>
						<td>${list.qnaCategory }</td>
						<td>${list.qnaTitle }</td>
						<td>${list.qnaComment }</td>
						<td>${list.qnaRegdate }</td>
						<td>
							<button class="delete">삭제하기</button>
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<!-- QnA 리스트에 데이터가 없는 경우 -->
			<c:if test="${fn:length(qList) <= 0}">
				<tr style="height: 100px;">
					<td colspan="6">검색 결과가 없습니다.</td>
				</tr>
			</c:if>
		</c:if>
	</tbody>
</table>