<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>홈 페이지</title>

</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	
	<p>테스트 하기 전에 : src / main / webapp / SQL / reset.sql + dummy.sql 실행하기</p>
	<p></p>
	<p>할일 : <br>
	댓글 기능<br>
	틀린 정보로 로그인 하면 에러<br>
	유저 정보 수정 빈칸 넣을때 에러<br>
	모든 페이지 로그인 상태에서만 작동하도록 만들기<br>
	이미지 파일 없을때 사진 안보이게 하기</p>
	<p><a href="views/map/map-hotel.html">지도 - 멍냥펜션</a></p>
	<p><a href="views/map/maptemp.jsp">지도 - 마커 여러개 표시</a></p>
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>