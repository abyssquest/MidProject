<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getUser</title>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
	
	<p>계정 정보 페이지</p>
	
	<p>회원 id : ${ user.id }</p>
	<p>회원 password : ${ user.password }</p>
	<p>회원 name : ${ user.name }</p>
	<p>회원 email : ${ user.email }</p>
	<p>회원 join_date : ${ user.join_date }</p>
	
	<p><a href="getUserList.do">유저 목록</a></p>
	
	<p><a href="updateUser.do?">유저 수정</a></p>
	
	<p><a href="deleteUser.do?">유저 탈퇴</a></p>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>