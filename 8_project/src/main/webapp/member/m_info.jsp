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
	<c:set var="dto" value="${dao.getOneMember( param.id ) }"></c:set>
	<h3> - 개 인 정 보 - </h3>
	id : ${ dto.id }<br>
	pwd : ${ dto.pwd }<br>
	name : ${ dto.name }<br>
	addr : ${ dto.addr }<br>
	tel : ${ dto.tel }<br>
	<hr>
	<input type="button" value="수 정" onclick="location.href='m_modify_form.jsp?id=${ dto.id }'">
	<input type="button" value="삭 제" onclick="location.href='m_delete.jsp?id=${ dto.id }'">
	
</body>
</html>