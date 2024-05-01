<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="dto" class="member.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	
	<jsp:useBean id="dao" class="member.MemberDAO"></jsp:useBean>
	
	<c:choose>
		<c:when test="${ dao.modify(dto) == 1 }">
			<c:redirect url="m_info.jsp?id=${dto.id }"></c:redirect>
		</c:when>
		<c:otherwise>
			<c:redirect url="m_modify_form?id=${dto.id }"></c:redirect>
		</c:otherwise>
	</c:choose>
	
</body>
</html>