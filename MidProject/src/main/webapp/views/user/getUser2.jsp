<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	.myPageHeader{
		height : 50px;
		font-size: large;
		font-family: 'Nanum Gothic Coding', monospace;
	}
	table { width : 70%; margin: 25px auto; }
	#box1 {
		border-radius: 20px;
		border: 10px solid lightgray;
		background-image: linear-gradient(#ffffff, #ffffff),
		linear-gradient(135deg, lightgray, red, orange, yellow, green, blue, purple);
		background-origin: border-box;
		background-clip: padding-box, border-box;
		transition: 10s;
	}
	#box1:hover { border-color: transparent; }
	.title {
		font-family: 'Nanum Gothic Coding', monospace;
		padding-left: 15px;
		font-size: 1.5em;
	}
	.content {
		padding-left: 15px;
		font-size: 1.2em;
	}
	.img {
		width: 50%;
		text-align: center;
		border-radius: 5%;
		overflow: hidden;
	}
	img {
		object-fit: cover;
	}
	#box2 > tbody > tr > td { text-align: center; }
	#box2 > tbody > tr > td > a { text-decoration: none; }
	.button {
		display: inline-block;
		padding: 8px 15px;
		margin: 5px 2px;
		border: none;
		border-radius: 15px;
		text-align: center;
		background-color: #e0e0e0;
		transition: 3000;
		text-decoration: none;
		color: black;
	}
	.button:hover {
		color: #ffffff;
		background-color: #a660d4b2;
	}
	</style>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	$(function(){
		var w = ($('table').width())/2;
		$('.img').css('width', w);
		$('img').css('width', w);
	});
	</script>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	<table id="box1">
		<tr>
			<td colspan="3" class = "myPageHeader"><h3>내 정보</h3></td>
		</tr>
		<c:if test="${ user.profileImage != null }">
		<tr>
			<td rowspan="6" class="img"><img src="/biz/upload/profile_user/${ user.profileImage }"></td>
		</tr>
		</c:if>
		<tr>
			<td class="title"><b>회원 id</b></td>
			<td class="content">${ user.id }</td>
		</tr>
		<tr>
			<td class="title"><b>회원 password </b></td>
			<td class="content">${ user.password }</td>
		</tr>
		<tr>
			<td class="title"><b>회원 name</b></td>
			<td class="content">${ user.name }</td>
		</tr>
		<tr>
			<td class="title"><b>회원 email</b></td>
			<td class="content">${ user.email }</td>
		</tr>
		<tr>
			<td class="title"><b>회원 가입일</b></td>
			<td class="content">${ user.joinDate }</td>
		</tr>
	</table>
	
	<table id="box2">
		<tr>
			<td><a href="getPetList.do" class="button">펫 관리</a></td>
			<td><a href="updateUser.do" class="button">유저 수정</a></td>
			<td><a href="deleteUser.do" class="button">유저 탈퇴</a></td>
		</tr>
	</table>
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>