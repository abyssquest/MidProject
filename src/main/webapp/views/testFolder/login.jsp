<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 페이지</title>
</head>
<body>
	<form action="login.do" method="post">
		<p>아이디<input type="text" name="id"></p>
		<p>패스워드<input type="password" name="password"></p>
		<p>아이디는 아무거나 입력 가능 / 패스워드는 "test" 로만 인증 성공</p>
		<p>인증 성공 / 실패는 스프링 콘솔창으로 확인</p>
		<p><input type="submit" value="로그인"></p>
	</form>
	
	<p><a href="insertUser.do">계정 생성 창 테스트</a></p>
	
	<p><a href="/biz/index.jsp">인덱스 창</a></p>
</body>
</html>