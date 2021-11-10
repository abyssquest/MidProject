<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>새로운 비밀번호 설정</title>
	<link href="updatePassword.css" rel="stylesheet" >
	<script type="text/javascript">
		function checkPw(){
			var pw = document.getElementById("password").value;
			var check = document.getElementById("checkPassword").value;
			if(pw == check && pw != ""){
				alert("비밀번호가 일치합니다.");
				document.getElementById("checkPass").innerHTML = "확인되었습니다.";
				document.getElementById("checkPass").style.color="green";
			}
			else {
			alert("비밀번호를 다시 입력하세요.");
			document.getElementById("password").value = "";
			document.getElementById("checkPassword").value = "";
			document.getElementById("checkPass").innerHTML = "일치하지 않습니다.";
			document.getElementById("checkPass").style.color="red";
			}
		}
	
		function onsubmit(){
			if(document.getElementById("checkPass").value == "확인되었습니다.")
			{
				return true;
			} else {
				alert("패스워드를 다시 입력해 주세요.");
				return false;
			}
		}
	</script>
	<style type="text/css">
	table, tr, td, th {
		font-size: large;
		font-family: "나눔고딕코딩";
	}
	tr, td {
		height: 40px;
	}
	table {
		margin: 180px auto;
	}
	.myPageHeader{
		width : 100%;
		height : 50px;
		
	}
	
	.Change{
		width : 600px;
		height : 120px;
		border-bottom: 1px solid #D3D3D3;
		padding: 30px 0px ;
		position: relative;
	}
	
	.font {
		font-size : large;
		font-family: "나눔고딕코딩";
	}
	
	.font_content {
		font-size : medium;
		font-family: "나눔고딕코딩";
	}
	
	#img_section {
		border-radius: 20px;
	}
	
	.input {
		float: right;
	}
	
	#font_height{
		line-height: 3;
		margin-left: 50px;
	}
	
	#picture{
		border-radius: 20px;
		
	}
	
	.button{
		margin: 40px;
	}
	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	<form action="updatePw.do"  method="post" onsubmit="return onsubmit()">
	<table>
		<tr>
			<td><h2 class = "font" >새로 설정할 패스워드</h2></td>
		</tr>
		<tr>
			<td><b class = "font_content">변경할 패스워드를 입력하세요.</b></td>
		</tr>
		<tr>
			<td><input type="password" name="password" id = "password" class = "input"></td>
		</tr>
		<tr>
			<td><h2 class = "font">패스워드 확인</h2></td>
		</tr>
		<tr>
			<td><b class = "font_content">한번 더 변경할 패스워드를 입력하세요.</b></td>
		</tr>
		<tr>
			<td>
			<input type="password" id="checkPassword" class = "input">
			&nbsp&nbsp&nbsp&nbsp
			<b id="checkPass"><input type="button" value="비밀번호 확인" onclick="checkPw()" class = "input"></b>
			</td>
		</tr>
		<tr>
			<td id = "bottom">
			<input type="submit" value="비밀번호 수정" class= "button"">&nbsp&nbsp&nbsp
			<a href="javascript:history.go(-1)"><input type="button" value="뒤로 가기" class= "button"></a>
			</td>
		</tr>
	</table>
	</form>
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>