<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>updateUser</title>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
	
	<form action="updateUser.do" method="post">
		<label>아이디<input type="hidden" name="id" value="${ user.id }"></label><br>
		<label>패스워드<input type="password" name="password"></label><br>
		<label>이름<input type="text" name="name"></label><br>
		<label>이메일<input type="email" name="email"></label><br>
		<input type="submit" value=" 수정 ">
	</form>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>