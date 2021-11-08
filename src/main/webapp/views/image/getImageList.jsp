<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>getImageList</title>
	<style type="text/css">
		.img_wrap {
			margin: 0 auto; border: 3px;
			width: 1250px; height: 500px; 
		}
		img {
			width:250px; height:250px;
			object-fit: cover;
		}
	</style>
</head>
<body>
	<jsp:include page="/views/module/log.jsp"/>
	
	<p>이미지 게시판 내용</p>
	
	<table class="img_wrap">
		<tr>
		<c:forEach items="${ imageList }" var="image" begin="0" end="9" step="1" varStatus="status">
			<c:if test="${ status.count == 6 }">
				</tr><tr>
			</c:if>
			<td>
				<a href="getImage.do?seq=${ image.seq }">
				<img src="/biz/upload/image_thumb/${ image.fileName }">
				</a>
			</td>
		</c:forEach>
		</tr>
	</table>
	
	<p><a href="insertImage.do">새 이미지 저장</a></p>
	
	<jsp:include page="/views/module/foot.jsp"/>
</body>
</html>