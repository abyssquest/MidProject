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
	
	<p>이미지 번호 : ${ image.seq }</p>
	<p>이미지 타이틀 : ${ image.title }</p>
	<p>이미지 컨텐츠 : ${ image.content }</p>
	<p>이미지 주인 id : ${ image.masterId }</p>
	<p>이미지 업로드날짜 : ${ image.uploadDate }</p>
	<img src="/biz/save_File/${ image.uploadFileName }">
	
	<p><a href="getImageList.do">이미지 목록</a></p>
	
	<p><a href="deleteImage.do?seq=${ image.seq }">이미지 삭제</a></p>
	
	<p>
		스프링 콘솔 창을 보세요
		<a href="index.do">인덱스 창</a>
	</p>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>