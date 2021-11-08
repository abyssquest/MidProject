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
		color: black;
		font-size: 32px;
		font-family: "Gamja Flower";
		margin: 20px auto;
	}
	table {
		width: 500px; height: 400px;
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
		width: 150px; height: 50px;
	}
	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	<form action="login.do" method="post" onsubmit="return onSubmit()">
		<table>
			<tr>
				<td colspan="2"><h2>어서오세요</h2></td>
			</tr>
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
					<a href="insertUser.do">회원가입</a>
					<input type="submit" value="로그인">
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