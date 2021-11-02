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
		<label>패스워드</label><input type="password"><br>
		<input type="submit" value=" 수정 ">
	</form>
	
</body>
</html>