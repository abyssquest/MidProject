<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getPet</title>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	
	getPet 페이지
	
	<p></p>
	<br>펫 이름 : ${ pet.name }
	<br>펫 생일 : ${ pet.birthDate }
	<p><img src="/biz/upload/profile_pet/${ pet.petImage }"></p>
	<br><a href="getPetList.do">펫 목록</a>
	<br><a href="updatePet.do?petKey=${ pet.petKey }">펫 수정</a>
	<br><a href="deletePet.do?petKey=${ pet.petKey }">펫 삭제</a>

	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>