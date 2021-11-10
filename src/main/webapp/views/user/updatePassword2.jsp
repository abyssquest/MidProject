<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새로운 비밀번호 설정</title>
<link href="updateContent.css" rel="stylesheet" >
<script type="text/javascript">

	function checkPw(){
		var pw = document.getElementById("password").value;
		var check = document.getElementById("checkPassword").value;
		 if(pw == check){
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
		alert("확인");
		if(document.getElementById("checkPass").value == "확인되었습니다.")
		{
			alert("비밀번호가 변경되었습니다.");
		}else {
			alert("패스워드를 다시 입력해 주세요.");
		}
	}
</script>
</head>
<body>

<jsp:include page="/views/module/top.jsp"/>
<div id="profile" >
	<form action="updatePw.do"  method="post" onsubmit = "onsubmit()">
		<div class = "Change">
			<h2 class = "font" >새로 설정할 패스워드</h2><br><br>
			<b class = "font_content">변경할 패스워드를 입력하세요.</b>
			<input type="password" name="password" id = "password" class = "input">
		</div>

		<div class = "Change">
			<h2 class = "font">패스워드 확인</h2><br><br>
			<b class = "font_content">한번 더 변경할 패스워드를 입력하세요.</b>
			<input type="button" value="비밀번호 확인" onclick="checkPw()" class = "input">
			<input type="password" id="checkPassword" class = "input"><br>
			<b id="checkPass"></b>
		</div>
		<div id = "bottom">
			<input type="submit" value="비밀번호 수정" class= "button" onclick="onsubmit()"> &nbsp;&nbsp;&nbsp;
			<a href="javascript:history.go(-1)"><input type="button" value="뒤로 가기" class= "button"></a>
		</div>
	</form>
</div>

<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>