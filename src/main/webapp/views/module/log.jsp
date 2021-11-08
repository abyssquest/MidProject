<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>

</head>
<body>

<%
	String id = (String)session.getAttribute("id");

	if(id != null){
		out.print("<a href=\"getUser.do?id="+id+"\">계정정보</a>&nbsp&nbsp&nbsp<a href=\"logout.do\">로그아웃</a>");
	}else{
		out.print("<a href=\"\">회원가입</a>&nbsp&nbsp&nbsp<a href=\"login.do\">로그인</a>");
	}
%>

</body>
</html>