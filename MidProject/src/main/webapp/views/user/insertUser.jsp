<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입</title>
	<link href="./insertUser.css" rel="stylesheet" >
	
<script type="text/javascript">
	function checkPw(){
		var pw = document.getElementById("password").value;
		var check = document.getElementById("checkpassword").value;

		if(pw == check){
			alert("패스워드가 확인되었습니다.");
			document.getElementById("pass").value == "true";
		}else {
			alert("패스워드를 확인하세요.");
			document.getElementById("password").value = "";
			document.getElementById("checkpassword").value = "";
			return
		}
	};
</script>

<script type="text/javascript">
	function submit(){
		var pw = document.getElementById("pass").value;
		if(pw == "true"){
			alert("입력중 잘못된 정보를 입력하였습니다.");
			return true;
		}else {
			alert("입력중 잘못된 정보를 입력하였습니다.");
			return false;
		}
	}
</script>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
<div id = "profile">
	<form action="insertUser.do" method="post" enctype="multipart/form-data" onsubmit="submit()">
	<input type="hidden" id = "pass" value = "false">
		<div>
			<h3>회원 가입</h3>
		</div>
				<div class = "Change">
					<input type="hidden" id = "pass">
					<b class = "font">ID</b><br><br>
					아이디를 입력하세요 : <input type="text" name="id" class = "input">
				</div>
				
				<div class = "Change">
					<b class = "font">패스워드</b><br><br>
					패스워드를 입력하세요 : <input type="password" name="password" id = "password" class = "input">
				</div>
				
				<div class = "Change">
					<b class = "font">패스워드 확인</b><br><br>
					패스워드를 한번 더 입력하세요 : <input type="password" id = "checkpassword" class = "input"> <br>
					<input type="button" value="비밀번호 확인" onclick="checkPw()" class = "input">
				</div>
				
				<div class = "Change">
					<b class = "font">이름</b><br><br>
					이름을 입력하세요 : <input type="text" name="id" class = "input">
				</div>
				
				<div class = "Change" id = "profileimage">
					<b class = "font">프로필 사진</b><br><br>
	 				<input type="file" id="upload_file" name="uploadFile" accept="image/*" class = "imageput">
				</div>
				
				<div class = "Change">
					<b class = "font">이메일</b><br><br>
					이메일을 입력하세요 : <input type="email" name = "email" class = "input" >
				</div>
				<div class = "Change" align="center">
					<input type="submit" value=" 회원 가입"> &nbsp;&nbsp;&nbsp;
					<button id="go-back" class = "">뒤로 가기</button>
				</div>
		</form>
	</div>
<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>