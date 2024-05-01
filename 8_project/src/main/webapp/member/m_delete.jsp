<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberDAO dao = new MemberDAO();
		int result = dao.delete( request.getParameter("id"));
		if (result == 1) {
			response.sendRedirect("m_list.jsp");
		} else {
			response.sendRedirect("m_info.jsp?id="+request.getParameter("id") );
		}
	%>
</body>
</html>