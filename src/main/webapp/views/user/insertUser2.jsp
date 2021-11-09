<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<style type="text/css">
		#wrap {
			background-image: url('https://images.unsplash.com/photo-1546238232-20216dec9f72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1768&q=80');
			background-size: cover;
			background-position: 50% 75%;
		}
		h2 {
			text-align: center;
			color: white;
			font-size: 40px;
			font-family: "Gamja Flower";
			margin: 50px auto;
		}
		table{
			width: 450px; height: 420px;
			padding: 10px; margin: 20px auto;
			border-radius: 20px;
			border: 10px solid lightgray;
			background-image: linear-gradient(#ffffff, #ffffff),
			linear-gradient(135deg, lightgray, red, orange, yellow, green, blue, purple);
			background-origin: border-box;
			background-clip: padding-box, border-box;
			transition: 10s;
		}
		table:hover { border-color: transparent; }
		tr > td:first-child {
			font-weight: bolder;
			text-align: center;
			width: 135px; height: 50px;
		}
		tr > td:last-child {
			
		}
		input[type=text], input[type=password], input[type=email] {
				display: block;
				width: 95%; height: 30px;
				text-align: center;
				font: 1.2em bold;
				border-style: none;
				outline: none;
				border-bottom-style: double;
				margin-bottom: 5px;
		}
		#submit { 
			width: 0; height: 0;
			padding: 0; margin: 0;
			border: none;
			outline: none;
		}
		.button {
			display: inline-block;
			padding: 8px 15px;
			margin: 5px 2px;
			border: none;
			border-radius: 15px;
			text-align: center;
			background-color: #e0e0e0;
			transition: 3000;
		}
		.button:hover {
			color: #ffffff;
			background-color: #a660d4b2;
		}
		input:checked+.button {
			background-color: #ffbd7f;
			color: white;
		}
	</style>
	<script type="text/javascript">
	$(function(){
		var tableTop = ($(window).height() - $('table').height()) / 2;
		$('table').css('top', tableTop);
	});
	</script>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	<h2>회원가입</h2>
	<form action="insertUser.do" method="post" enctype="multipart/form-data" onsubmit="return onSubmit()">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" ></td>
		</tr>
		<tr>
			<td>패스워드</td><td>
			<input type="password" name="password"></td>
		</tr>
		<tr>
			<td>패스워드 확인</td>
			<td><input type="password" name="passwordchk"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="email"></td>
		</tr>
		<tr>
			<td>유저사진</td>
			<td><input type="file" name="uploadFile"></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" name="" id="submit">
			<label for="submit" class="button">등록하기</label>
			</td>
		</tr>
	</table>
	</form>
	<jsp:include page="/views/module/foot.jsp"/>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	function onSubmit(){
		if($('[name="id"]').val() == null) {
			alert('아이디를 입력하세요');
			return false;
		}
		if($('[name="id"]').val() == "") {
			alert('아이디를 입력하세요');
			return false;
		}
		if($('[name="password"]').val() == null){
			alert('암호를 입력하세요');
			return false;
		}
		if($('[name="password"]').val() == ""){
			alert('암호를 입력하세요');
			return false;
		}
		if($('[name="password"]').val() != $('[name="passwordchk"]').val()){
			alert('암호가 일치하지 않습니다');
			return false;
		}
		return true;
	}
	</script>
</body>
</html>