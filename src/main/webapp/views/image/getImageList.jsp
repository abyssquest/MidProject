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
		img { width:300px; height:300px; }
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
				<div class="title">${ image.title }</div>
				<div class="content">${ image.content }</div>
				<div class="masterId">${ image.masterId }</div>
				<div class="uploadDate">${ image.uploadDate }</div>
				<div>
					<a href="getImage.do?seq=${ image.seq }">
					<img src="/biz/save_thumb/${ image.uploadFileName }"/>
					</a>
				</div>
			</div>
		</c:forEach>
	</div>
	
	<p><a href="insertImage.do">새 이미지 저장</a></p>
	
	<jsp:include page="/module/foot.jsp"/>
</body>
</html>