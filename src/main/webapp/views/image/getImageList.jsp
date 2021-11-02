<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getImageList</title>
	<style type="text/css">
		#imageboardwrap {
			width:1000px; height:1000px;
			border:1px solid black;
		}
		.imagebox {
			width:800px; height:150px;
			border:1px solid black;
		}
		.imagebox > .seq {}
		.imagebox > .title {}
		.imagebox > .content {}
		.imagebox > .masterId {}
		.imagebox > .uploadDate {}
	</style>
</head>
<body>
	<jsp:include page="/module/log.jsp"/>
	
	<p>이미지 게시판 내용</p>
	
	<div id="imageboardwrap">
		<c:forEach items="${ imageList }" var="image">
			<div class="imagebox">
				<div class="seq">${ image.seq }</div>
				<div class="title">${ image.title }</div>
				<div class="content">${ image.content }</div>
				<div class="masterId">${ image.masterId }</div>
				<div class="uploadDate">${ image.uploadDate }</div>
				<div><a href="getImage.do?seq=${ image.seq }">게시글 세부 링크</a></div>
			</div>
		</c:forEach>
	</div>
	
	<p><a href="insertImage.do">새 이미지 저장 테스트</a></p>
	
	<p>
		스프링 콘솔 창을 보세요
		<a href="index.do">인덱스 창</a>
	</p>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>