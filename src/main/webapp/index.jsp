<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>홈 페이지</title>
	<link type="text/css" rel="stylesheet" href="/css/footer.css">
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
		
	<p><a href="getImageList.do">이미지 목록 테스트</a></p>
	
	<p><a href="getUserList.do">유저 목록 테스트</a></p>
	
	<p><a href="getPetList.do">펫 목록 테스트</a></p>
	
	<p><a href="logout.do">로그아웃 테스트 - 인덱스 창으로 돌아옴</a></p>
	
	<p><a href="views/map/map-hotel.html">지도 - 멍냥펜션</a></p>
	<p><a href="views/map/maptemp.jsp">지도 - 마커 여러개 표시</a></p>
	
	<table>
		<tr>
			<td>더미 테이블 1</td>
		</tr>
		<tr>
			<td>더미 테이블 2</td>
		</tr>
	</table>
	
	<jsp:include page="/module/testsite.jsp"/>
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>