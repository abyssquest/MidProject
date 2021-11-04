<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getUserList</title>
</head>
<body>
	<jsp:include page="/views/module/log.jsp"/>
	
	<p>유저 목록 내용</p>
	<table>
		<tr>
			<th>id</th>
			<th>password</th>
			<th>name</th>
			<th>email</th>
			<th>joinDate</th>
		</tr>
		<c:forEach items="${ userList }" var="user">
			<tr>
				<td>${ user.id }</td>
				<td>${ user.password }</td>
				<td>${ user.name }</td>
				<td>${ user.email }</td>
				<td>${ user.joinDate }</td>
			</tr>
		</c:forEach>
	</table>
	
	
	<p><a href="insertUser.do">유저 등록 테스트</a></p>
		
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>