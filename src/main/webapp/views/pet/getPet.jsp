<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getPet</title>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
	
	getPet 페이지
	
	<p></p>
	<br>펫 이름 : ${ pet.name }
	<br>펫 생일 : ${ pet.birthDate }
	<p><img src="/biz/save_PetImage/${ pet.uploadPetFile }"></p>
	<br><a href="getPetList.do">펫 목록</a>
	<br><a href="updatePet.do?seq=${ pet.seq }">펫 수정</a>
	<br><a href="deletePet.do?seq=${ pet.seq }">펫 삭제</a>
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>