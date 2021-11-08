<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Gaegu:wght@300;400;700&family=Hi+Melody&display=swap');
		html, body {
			width: 100%; height:100%;
			margin: 0;
			padding: 0;
		}
		#top1 {
			position: fixed; top: 0px;
			width: 100%; height: 54px;
			background: white;
			border-bottom: 1px solid black;
			font-size: 54px; font-family: 'Nanum Pen Script', cursive;
			text-align: center;
		}
		#top2 {
			position: fixed; top: 55px;
			width: 100%; height: 54px;
			background: white;
			border-bottom: 1px solid black;
		}
		#top1 > a {
			text-decoration: none;
			color: black;
		}
		#top1 > #log {
			position: fixed;
			top: 10px; right: 30px;
			display: inline;
			float: right;
			font-size: 30px;
		}
		#top1 > #log > a {
			text-decoration: none;
		}
		#tap2 > table {
			margin:0 auto;
			border-spacing: 5px;
		}
		#top2 > table > tbody > tr > td {
			height: 48px;
			font-size: 30px; font-family: 'Hi Melody', cursive;
			text-align: center;
		}
	</style>
</head>
<body>
	<div id="top1">
		<a href="index.do">더조은 펫</a>
		<div id="log">
			<jsp:include page="/views/module/log.jsp"/>
		</div>
	</div>
	<div id="top2">
		<table>
			<tr>
				<td>이미지</td>
				<td>커뮤니티</td>
				<td>보호소</td>
				<td>음식</td>
				<td>건강</td>
				<td>병원</td>
				<td>카페</td>
				<td>펜션</td>
			</tr>
		</table>
	       
	</div>
	
	
</body>
</html>