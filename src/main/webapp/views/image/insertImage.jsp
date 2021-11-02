<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>insertImage</title>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>

	<form action="insertImage.do" method="post">
		<input type="hidden" name="masterId" value="<%= (String)session.getAttribute("id") %>">
		<label>타이틀<input type="text" name="title"></label><br>
		<label>컨텐츠<input type="text" name="content"></label><br>
		
		<!-- <span>파일첨부</span><input type="file" name="uploadFile"><br> -->
		<!-- 아직 미구현 -->
		
		
		<input type="submit" value="등록">
	</form>
	
	<br>
	<br>
	<br>
	
	<div><h3><b><a href="./getImageList.jsp">이미지 게시판으로 이동하기</a></b></h3></div>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>