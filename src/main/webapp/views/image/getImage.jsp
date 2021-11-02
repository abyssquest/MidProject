<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getImage</title>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
	
	<p>getImage 페이지</p>
	
	<p>${ image.seq }</p>
	<p>${ image.title }</p>
	<p>${ image.content }</p>
	<p>${ image.masterId }</p>
	<p>${ image.uploadDate }</p>
	
	<p><a href="getImageList.do">이미지 목록</a></p>
	
	<p><a href="deleteImage.do?seq=${ image.seq }">이미지 삭제</a></p>
	
	<p>
		스프링 콘솔 창을 보세요
		<a href="index.do">인덱스 창</a>
	</p>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>