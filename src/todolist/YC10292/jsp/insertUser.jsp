<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align="center"> <!-- ★여기서  Not page Mapping -->
	<form action="insertUser.do" method="post">
		<table border="" width = "400" height = "600">
			<tr>
				<td>아이디 </td>
				<td><input type="text" name = "password"></td>
			</tr>
			<tr>
				<td>비밀번호 </td>
				<td><input type="password" name = "pw" id = "password"></td>
			</tr>
<!-- 			<tr>
				<td>비밀번호 확인 </td>
				<td><input type="password" id = "checkpassword"></td>
			</tr> -->
			<tr>
				<td>이름</td>
				<td><input type="text" name = "name"></td>
			</tr>
<!-- 			<tr>
				<td>휴대폰</td>
				<td><input type="tel" name = "tel" maxlength="11"></td>
			</tr> -->
			<tr>
				<td>주소</td>
				<td><input type="text" name = "address"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name = "email"></td>
			</tr>
			<tr>
				<td colspan="2" align="center" cellpadding = "100" cellspacing = "200px">
					<input type="submit" value="회원가입"> <!-- 추후에 회원가입 , 뒤로 가기 코드 작성. -->
					<a href="javascript:history.go(-1)"> Return </a>
				</td>
			</tr>
		</table>
	</form>
</div>



</body>
</html>