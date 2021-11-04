<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>홈 페이지</title>
</head>
<body>
	<jsp:include page="/views/module/log.jsp"/>
	<p>테스트 하기 전에 : src / main / webapp / SQL / reset.sql 실행하기</p>
	<p></p>
	<p>할일 : <br>
	틀린 정보로 로그인 하면 에러<br>
	유저 정보 수정 빈칸 넣을때...</p>
	<p><a href="views/map/map-hotel.html">지도 - 멍냥펜션</a></p>
	<p><a href="views/map/maptemp.jsp">지도 - 마커 여러개 표시</a></p>
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>