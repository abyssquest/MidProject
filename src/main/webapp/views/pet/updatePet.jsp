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
		<input type="hidden" name="seq" value="${ pet.seq }">
		<label>이름<input type="text" name="name"></label><br>
		<label>생일<input type="date" name="birthDate"></label><br>
		<label>펫 사진<input type="file" name="uploadFile"></label>
		<input type="submit" value="수정">
	</form>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>