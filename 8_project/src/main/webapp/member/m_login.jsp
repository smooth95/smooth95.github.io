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
	<h1>Login ㅔ이지 입니다.</h1>
	${param.result }
	<c:choose>
		<c:when test="${ loginId == null }">
			<form action="${path }member/m_login_check.jsp" method="post">
				<input type="text" name="id" placeholder="input id"><br>
				<input type="text" name="pwd" placeholder="input pwd"><br>
				<input type="submit" value="login"><br>
				<a href="${ path }member/m_register_form.jsp">회원가입</a>
			</form>
		</c:when>
		<c:otherwise>
			<br>${loginName } 님 로그인 상태입니다.!!!
			<a href="${ path }member/m_logout.jsp">로그아웃</a> 
		</c:otherwise>
	</c:choose>
</body>
</html>