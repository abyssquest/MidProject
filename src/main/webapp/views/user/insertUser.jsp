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
			font-size: 44px;
			font-family: "Gamja Flower";
			margin: 20px auto;
		}
		table{
			width: 500px; height: 600px;
			padding: 20px 25px;
			margin: 10px auto;
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
			width: 120px; height: 20px;
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
	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	<h2>회원가입</h2>
	<form action="insertUser.do" method="post" enctype="multipart/form-data" onsubmit="return onSubmit()">
		<table>
			<tr>
				<td>아이디</td><td><input type="text" name="id" ></td>
			</tr>
			<tr>
				<td>패스워드</td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>패스워드 확인</td><td><input type="password" name="passwordchk"></td>
			</tr>
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>이메일</td><td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>유저사진</td><td><input type="file" name="uploadFile"></td>
			</tr>
			<tr>
				<td rowspan="2"><input type="submit" value="회원가입"></td>
			</tr>
		</table>
		<br>
	</form>
	<jsp:include page="/views/module/foot.jsp"/>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		function onSubmit(){
			if($('[name="password"]').val() != $('[name="passwordchk"]').val()){
				alert('암호가 일치하지 않습니다');
				return false;
			}
			if($('[name="id"]').val() == null) {
				alert('아이디를 입력하세요');
				return false;
			}
			if($('[name="id"]').val() == "") {
				alert('아이디를 입력하세요');
				return false;
			}
			return true;
		}
	</script>
</body>
</html>