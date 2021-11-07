<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		html, body {
			width: 100%; height: 100%;
			margin: 0;
		}
		#module_log {
			background: lightgray; 
		}
	</style>
</head>
<body>
<div id="module_log">
<%
	String id = (String)session.getAttribute("id");

	if(id != null){
		out.print(id+" 님 환영합니다.<br>");
		out.print("&nbsp<a href=\"getUser.do?id="+id+"\">계정정보</a>&nbsp&nbsp&nbsp<a href=\"logout.do\">로그아웃</a>");
	}else{
		out.print("로그인 후 이용 가능합니다.<br>");
		out.print("<a href=\"login.do\">로그인</a>");
	}
%>
</div>
</body>
</html>