<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url var="path" value="/" />
	path : ${ path }<br>
	<h1 align="center">Test Web</h1>
	<hr>
	<a href="${path}index.jsp">HOME</a>&nbsp; &nbsp;
	<a href="${path}member/m_list.jsp">MEMBERS</a>&nbsp; &nbsp;
	<c:if test="${ loginId == null }">
	<a href="${path }member/m_login.jsp">LOGIN</a>
	</c:if>
	<c:if test="${ loginId != null }">
	<a href="${path }member/m_logout.jsp">LOGOUT</a>
	</c:if>
	<hr>
</body>
</html>