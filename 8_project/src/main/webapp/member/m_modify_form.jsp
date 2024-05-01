<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		label { 
			display: inline-block;
			width: 70px;
			
		}
	</style>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ include file="/common/header.jsp" %>
	<jsp:useBean id="dao" class="member.MemberDAO"></jsp:useBean>
	<c:set var="dto" value="${dao.getOneMember(param.id) }"></c:set>
	<form action="m_modify.jsp" method="post">
		<label>아이디</label><input type="text" readonly name="id" value="${dto.id }"><br>
		<label>패스워드</label><input type="text" name="pwd" value="${dto.pwd }"><br>
		<label>이름</label><input type="text" name="name" value="${dto.name }"><br>
		<label>주소</label><input type="text" name="addr" value="${dto.addr }"><br>
		<label>전화번호</label><input type="text" name="tel" value="${dto.tel }"><br>
		<input type="submit" value="완료">
		<input type="reset" value="취소" onclick="javascript:history.back();">
	</form>
</body>
</html>