<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>맵 테스트</title>
	<style type="text/css">
		#map {
			width: 600px; height: 400px;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<p><a href="javascript:history.go(-1)">뒤로 가기</a></p>
	<p>임시 데이터로 표시한 지도</p>
	<div id="map"></div>
	<!-- 필요한거 : 모델에 들어갈 속성
	
	유저 현재 주소
	객체-리스트 : 분실 / 유기 동물 : 이름 - 잃어버린 위치
	
	 -->
	
	
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e6bc93df7e7e40fee18525f23ec8fe22&libraries=services,clusterer,drawing"></script>
	<script type="text/javascript">
		var mapContainer = document.getElementById('map'), 
		mapOption = {
			center: new kakao.maps.LatLng(33.450705, 126.570677/* 유저 주소 좌표 ${ user.address } */),
			level: 3
		};

		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		var positions = [
			// 모델 lostedPestList 담을 공간 비지니스 로직에서 작업해놔야 함
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