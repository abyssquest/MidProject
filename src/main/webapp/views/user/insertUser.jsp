<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>insertUser</title>
</head>
<body>
	<form action="insertUser.do" method="post">
		<label>아이디</label><input type="text" name="id"><br>
		<label>패스워드</label><input type="password" name="password"><br>
		<label>패스워드 확인</label><input type="password" name="passwordchk"><br>
		<label>이름</label><input type="text" name="name"><br>
		<label>이메일</label><input type="email" name="email"><br>
		<input type="submit" value="회원가입"><br>
		<a href="javascript:history.go(-1)">뒤로 가기</a>
	</form>
	
	
</body>
</html>