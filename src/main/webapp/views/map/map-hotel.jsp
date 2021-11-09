<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>다른 이미지로 마커 생성하기</title>
	<style>
	#map{
		width:100%; height: 1000px;
		margin: 0; padding: 0;
		float:right;
		height: cal(100% - 218px);
	}
	.customoverlay {
		position: relative;
		bottom: 70px;
		border-radius: 6px;
		border: 1px solid #ccc;
		border-bottom: 2px solid #ddd;
		float: left;
	}
	
	.customoverlay:nth-of-type(n) {
		border: 0;
		box-shadow: 0px 1px 2px #888;
	}
	/* .customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;overflow:hidden;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;} */
	.customoverlay /* .title  */ {
		display: block;
		text-align: center;
		background: #fff; /* margin-right:35px */;
		padding: 10px 15px;
		font-size: 14px;
		font-weight: bold;
	}
	/* .customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')} */
	</style>
</head>
<body>
	<jsp:include page="/views/module/top.jsp"/>
	<div id="map"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d9be443f72f3a354b8ce4a816be23ce8"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(38.04577339923903, 128.5761462353454), // 지도의 중심좌표
	        level: 7 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 펜션 마커
	var imageSrc = '/biz/views/source_image/marker_dog.png', // 마커이미지의 주소입니다    
	    imageSize = new kakao.maps.Size(53, 55), // 마커이미지의 크기입니다
	    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	
	// 동물병원 마커
   var imageSrc2 = '/biz/views/source_image/marker_cross.png'; // 마커이미지의 주소입니다
   var imageSize2 = new kakao.maps.Size(53, 55)
   var imageOption2 = {offset: new kakao.maps.Point(27, 65)};
	    
	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	/* var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
	    markerPosition1 = new kakao.maps.LatLng(38.069258179432, 128.56786266415); */ // 마커가 표시될 위치입니다
	
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
	    var markerImage2 = new kakao.maps.MarkerImage(imageSrc2, imageSize2, imageOption2);
	   
	    
	// 강원도 펜션 마커 1 대명동물병원
	var marker1 = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(38.07375191469162, 128.6201507115621), 
	    image: markerImage2, // 마커이미지 설정
		});
	
	// 강원도 펜션 마커 2 강이네 하우스
	var marker2 = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(38.067031184080975, 128.58334781139502), 
	    image: markerImage, // 마커이미지 설정
		});
	
	// 강원도 펜션 마커 3 발렌타인 애견펜션
	var marker3 = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(38.0469154968879, 128.61436475387362), 
	    image: markerImage, // 마커이미지 설정
		});
	
	// 강원도 펜션 마커 4 양양 빈티지 하우스
	var marker4 = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(38.078818850321454, 128.6715609949088), 
	    image: markerImage, // 마커이미지 설정
		});
	
	// 강원도 펜션 마커 5 어린왕자 애견펜션
	var marker5 = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(38.058173407751056, 128.68250343354484), 
	    image: markerImage, // 마커이미지 설정
		});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker1.setMap(map);
	marker2.setMap(map);
	marker3.setMap(map);
	marker4.setMap(map);
	marker5.setMap(map);
	
	//커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	/* var content = '<div class="customoverlay">' +
	    '    <span class="title">꼬로몽 애견펜션</span>' +
	    '</div>'; */
	
	// 커스텀 오버레이가 표시될 위치입니다 
	/* var position = new kakao.maps.LatLng(38.069258179432, 128.56786266415); */  
	
	// 커스텀 오버레이를 생성합니다 - 1번 대명 동물병원
	var customOverlay1 = new kakao.maps.CustomOverlay({//
	    map: map,
	    position: new kakao.maps.LatLng(38.07375191469162, 128.6201507115621),
	    content: '<div class="customoverlay">' +
	    '    <span class="title">대명동물병원</span>' +
	    '</div>',
	    yAnchor: 1 
	});
	// 커스텀 오버레이 -2번 강이네 하우스
	var customOverlay2 = new kakao.maps.CustomOverlay({
	    map: map,
	    position: new kakao.maps.LatLng(38.067039630785054, 128.58334781139502),
	    content: '<div class="customoverlay">' +
	    '    <span class="title">강이네 하우스</span>' +
	    '</div>',
	    yAnchor: 1 
	});
	// 커스텀 오버레이 - 3번 발렌타인
	var customOverlay3 = new kakao.maps.CustomOverlay({
	    map: map,
	    position: new kakao.maps.LatLng(38.0469154968879, 128.61436475387362),
	    content: '<div class="customoverlay">' +
	    '    <span class="title">발렌타인 애견펜션</span>' +
	    '</div>',
	    yAnchor: 1 
	});
	
	// 커스텀 오버레이 - 4번 양양 빈티지 하우스
	var customOverlay4 = new kakao.maps.CustomOverlay({
	    map: map,
	    position: new kakao.maps.LatLng(38.078818850321454, 128.67152880840032),
	    content: '<div class="customoverlay">' +
	    '    <span class="title">양양 빈티지 하우스</span>' +
	    '</div>',
	    yAnchor: 1 
	});
	
	// 커스텀 오버레이 - 5번 어린왕자 애견펜션
	var customOverlay5 = new kakao.maps.CustomOverlay({
	    map: map,
	    position: new kakao.maps.LatLng(38.058173407751056, 128.68250343354484),
	    content: '<div class="customoverlay">' +
	    '    <span class="title">어린왕자 애견 펜션</span>' +
	    '</div>',
	    yAnchor: 1 
	});
	</script>
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>