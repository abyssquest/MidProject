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
			overflow: hidden;
		}
		#top1 {
			position: fixed; top: 0px;
			width: 100%; height: 54px;
			background: white;
			border-bottom: 1px solid black;
			font-size: 50px; font-family: 'Nanum Pen Script', cursive;
			text-align: center;
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
			font-size: 28px;
		}
		#top1 > #log > a {

			text-decoration: none;
		}
		#top2 {
			position: fixed; top: 55px;
			width: 100%; height: 54px;
			background: white;
			border-bottom: 1px solid black;
			text-align: center;
		}
		#tap2 > ul {
			display: block;
			margin: 0 auto;
			list-style-type: none;
			text-align: center;
			
		}
		#top2 > ul > li {
			display: inline-block;
			height: 48px;
			margin: 0 25px;
			font-size: 24px; font-family: 'Hi Melody', cursive;
		}
		#top2 > ul > li > a {
			text-decoration: none;
		}
		#top2 > #log_msg {
			position: fixed;
			top: 68px; right: 30px;
			display: inline;
			float: right;
			font-size: 20px;
		}
		#wrap {
			position: fixed; top: 120px;
			width: 100%;
		}
	</style>
</head>
<body>
	<div id="top1">
		<a href="index.do">더조은 펫</a>
		<div id="log">
		<%
			String id = (String)session.getAttribute("id");
		
			if(id != null){
				out.print("<a href=\"getUser.do?id="+id+"\">계정정보</a>&nbsp&nbsp&nbsp<a href=\"logout.do\">로그아웃</a>");
			}else{
				out.print("<a href=\"insertUser.do\">회원가입</a>&nbsp&nbsp&nbsp<a href=\"login.do\">로그인</a>");
			}
		%>
		</div>
	</div>
	<div id="top2">
		<ul>
			<li><a href="getImageList.do">이미지</a></li>
			<li>음식</li>
			<li>건강</li>
			<li>병원</li>
			<li>카페</li>
			<li>펜션</li>
			<li><a href="getPetList.do">보호소</a></li>
			<li><a href="getUserList.do">커뮤니티</a></li>
		</ul>
		<div id="log_msg">
		<%
			if(id != null){
				out.print(id+"님 안녕하세요");
			}else{
				out.print("로그인 하세요");
			}
		%>
		</div>
	</div>
	<div id="wrap">
</body>
</html>