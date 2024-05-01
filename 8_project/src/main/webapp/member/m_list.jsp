<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/common/header.jsp" %>
	<jsp:useBean id="dao" class="member.MemberDAO"></jsp:useBean>
	<h3>모든 목록 확인</h3>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>주소</th>
			<th>전화번호</th>
		</tr>
		<c:set var="list" value="${ dao.getList() }" />
		<c:forEach var="dto" items="${ list }">
			<tr>
				<td>
				<c:choose>
					<c:when test="${ loginId ne null }">
						<c:set var="result" value="/m_info.jsp?id=${ dto.id }"></c:set>
					</c:when>
					<c:otherwise>
						<c:set var="result" value="/m_login.jsp"></c:set>
					</c:otherwise>
				</c:choose>
					<a href="${path}member/${result}">${ dto.name }</a>
				</td>
				<td>${ dto.addr }</td>
				<td>${ dto.tel }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>