<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>updatePet</title>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
	
	<form action="updatePet.do" method="post" enctype="multipart/form-data">
		<label>이름</label><input type="text"><br>
		<input type="submit" value=" 수정 ">
	</form>
	
	
</body>
</html>