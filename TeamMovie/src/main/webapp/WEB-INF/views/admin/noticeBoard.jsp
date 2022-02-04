<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
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
		<!-- 공지사항 게시판 검색시 selBoard = 1 -->
		<c:if test="${selBoard eq '1'}">
			<c:if test="${fn:length(nList) > 0}">
				<c:forEach var="list" items="${nList }">
					<tr>
						<td>${list.noticeNum }</td>
						<td>${list.noticeCategory }</td>
						<td>${list.noticeTitle }</td>
						<td>${list.noticeComment }</td>
						<td>${list.noticeRegdate }</td>
						<td>
							<button class="delete">삭제하기</button>
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${fn:length(nList) <= 0}">
				<tr style="height: 100px;">
					<td colspan="6">검색결과가 없습니다.</td>
				</tr>
			</c:if>
		</c:if>
		
		<!-- QnA 게시판 검색시 selBoard = 2 -->
		<c:if test="${selBoard eq '2'}">
		
		</c:if>
		
		<!-- 미선택시 selBoard = 2 -->
		<c:if test="${selBoard eq '2'}">
		
		</c:if>
	</tbody>
</table>