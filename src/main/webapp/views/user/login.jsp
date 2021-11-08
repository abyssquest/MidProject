<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 페이지</title>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	<form action="login.do" method="post">
		<p>아이디<input type="text" name="id"></p>
		<p>패스워드<input type="password" name="password"></p>
		<p><input type="submit" value="로그인"></p>
	</form>
	
	<p><a href="insertUser.do">계정 생성 창 테스트</a></p>
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>