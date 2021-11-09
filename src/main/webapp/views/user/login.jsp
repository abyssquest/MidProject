<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 페이지</title>
	<style type="text/css">
	#wrap {
		background-image: url('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F28%2F2021%2F05%2F12%2Fkitten-litter-cat-names-CATNAMES0521.jpg');
		background-size: cover;
		background-position: 50% 25%;
	}
	h2 {
		text-align: center;
		color: white;
		font-size: 40px;
		font-family: "Gamja Flower";
		margin: 50px auto;
	}
	table {
		width: 450px; height: 280px;
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
	tr:last-child > td {
		text-align: center;
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
		text-decoration: none;
		color: black;
	}
	.button:hover {
		color: #ffffff;
		background-color: #a660d4b2;
	}
	input:checked+.button {
		background-color: #ffbd7f;
		color: white;
	}
	input[type=text], input[type=password] {
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
	<h2>어서오세요</h2>
	<form action="login.do" method="post" onsubmit="return onSubmit()">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="insertUser.do" class="button">회원가입</a>
				<input type="submit" name="" id="submit">
				<label for="submit" class="button">로그인</label>
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
		return true;
	}
	</script>
</body>
</html>