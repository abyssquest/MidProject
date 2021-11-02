<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>insertPetForm</title>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
	
	<form action="insertPet.do" method="post">
		<input type="hidden" name="masterId" value="<%= (String)session.getAttribute("id")%>">
		<label>이름<input type="text" name="name"></label><br>
		<label>생일<input type="date" name="birthDate"></label><br>
		<input type="submit" value="등록">
	</form>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>