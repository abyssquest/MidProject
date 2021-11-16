<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>맵 테스트</title>
	<style type="text/css">
		html, body {
			width: 99%; height: 99%;
		}
		#map {
			width: 99%; height: 99%;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<div id="map"></div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e6bc93df7e7e40fee18525f23ec8fe22&libraries=services,clusterer,drawing"></script>
	<script type="text/javascript">
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			/* 사용자 주소 넣을 자리 */
			center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level: 3 // 지도의 확대 레벨
		};
	
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	// 마커를 표시할 위치와 title 객체 배열입니다 
	var positions = [
		{
			title: '카카오', 
			latlng: new kakao.maps.LatLng(33.450705, 126.570677)
		},
		{
			title: '생태연못', 
			latlng: new kakao.maps.LatLng(33.450936, 126.569477)
		},
		{
			title: '텃밭', 
			latlng: new kakao.maps.LatLng(33.450879, 126.569940)
		},
		{
			title: '근린공원',
			latlng: new kakao.maps.LatLng(33.451393, 126.570738)
		}
	];
	
	for (var i = 0; i < positions.length; i ++){
		// 마커 객체 생성 n 설정
		var marker = new kakao.maps.Marker({
			map: map, // 마커를 표시할 지도
			position: positions[i].latlng, // 마커를 표시할 위치
			title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		});
		
		marker.setMap(map); // 마커가 지도에 표시
		
		// 인포윈도우 객체 생성 n 설정
		var infowindow = new kakao.maps.InfoWindow({
			position : positions[i].latlng, 
			content : '<div class="infoWindow">CSS 꾸미기 미션</div>' 
		});
		
		infowindow.open(map, marker); //인포 윈도우 지도에 표시
	}
	</script>
</body>
</html>