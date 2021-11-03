<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>홈 페이지</title>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
	<p>vo에 새로운 변수가 추가되면 기존 db의 테이블이 소용이 없어집니다<br>
		유저부분 이미지부분 펫부분 테스트 하시기 전에<br>
		sql 파일에서 기존 테이블 삭제하시고 새로 만들어 테스트 하기 바랍니다<br>
		</p>
	<p><a href="views/map/map-hotel.html">지도 - 멍냥펜션</a></p>
	<p><a href="views/map/maptemp.jsp">지도 - 마커 여러개 표시</a></p>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>