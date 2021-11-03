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
		<p>이제 DB에 유저 정보가 저장됩니다<br>아무 아이디나 넣지 마세요<br>sql문을 실행해 유저 테이블을 만든후 실행하세요
		</p>
		<p><input type="submit" value="로그인"></p>
	</form>
	
	<p><a href="insertUser.do">계정 생성 창 테스트</a></p>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>