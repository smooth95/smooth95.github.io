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
	<jsp:setProperty property="*" name="dto" />
	<jsp:useBean id="dao" class="member.MemberDAO"></jsp:useBean>
	<c:choose>
		<c:when test="${dao.register( dto ) == 1 }">
			<c:set var="result" value="회원가입 되었습니다.!!!"/>
			<c:set var="url" value="m_login.jsp"/>
		</c:when>
		<c:otherwise>
			<c:set var="result" value="문제발생!!!"/>
			<c:set var="url" value="m_register_form.jsp"/>
		</c:otherwise>
	</c:choose>
	<c:redirect url="${ url }">
		<c:param name="result" value="${ result }"></c:param>
	</c:redirect>
	
</body>
</html>